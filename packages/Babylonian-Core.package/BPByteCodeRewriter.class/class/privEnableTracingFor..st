2 - enable tracing
privEnableTracingFor: method
	
	| config tempIdxMap nextBlockIdx encoder litTracerIdx litInvocationCountIdx litEnterIdx litExitIdx blockIdentifierLiterals parentBlockMap blockExtents |

	encoder := method encoderClass new 
		streamToMethod: method;
		yourself.
	config := self getConfig: method.
		
	self assert: (litTracerIdx := method literals findFirst: [:e | e isVariableBinding and: [e key == #BPByteCodeCallgraphTracer]]) > 0.
	self assert: (litInvocationCountIdx := method literals findFirst: [:e | e isVariableBinding and: [e key == #bpInvocationCount]]) > 0.
	self assert: (litEnterIdx := method indexOfLiteral: #enter:invocation:) > 0.
	self assert: (litExitIdx := method indexOfLiteral: #exit:invocation:returns:) > 0.
	
	blockIdentifierLiterals := method literals
		allButLast
		allButLast 
		withIndexCollect: [:literal :i | (literal isVariableBinding and: [literal key beginsWith: 'bpClassNameMethodNameBlockIdx-'])
			ifTrue: [i -> (literal key splitBy: '-') allButFirst "blockExtent . blockId . num temps"]
			ifFalse: [-1 -> nil]].
	blockIdentifierLiterals := blockIdentifierLiterals select: [:i | i key > -1].
	
	blockIdentifierLiterals withIndexDo: [:each :i |
		(method literalAt: each key) 
			value: 
				method methodClass asString, 
				' >> ', method selector, 
				' >> ', i "block index within the method. 1 for root block. Could later be used to map back to the actual source code position of a given block"].
	
	nextBlockIdx := 1.
	tempIdxMap := Dictionary new.
	
	blockExtents := blockIdentifierLiterals 
		collect: [:each | | tmp start stop |
			tmp := each value first allButFirst allButLast splitBy: ' '.
			start := tmp first asInteger.
			stop := tmp last asInteger.
			each value second asInteger -> (start to: stop)].
	blockExtents sort: [:a :b | a value start < b value start].
		
	parentBlockMap := Dictionary new.
	blockExtents allButFirst do: [:current | | wrappingBlock |
		wrappingBlock := (blockExtents select: [:each | each value start < current value start and: [each value stop > current value start]]) last.
		parentBlockMap at: current key put: wrappingBlock key. 
	].
	
	[ | nopPositions |
		nopPositions := config nopPositions.
		nopPositions withIndexDo: [:data :nopIdx | | type interval blockId |		
			type := data first.
			interval := data second.
			blockId := data third.
			
			(encoder instVarNamed: #stream) position: interval start - 1.
			
			type == #beginRoot ifTrue: [
				self assert: tempIdxMap isEmpty.
				tempIdxMap at: blockId put: {method numTemps - 1}.
			
				"invocation index increment and store into temp"
				encoder genPushLiteralVar: litInvocationCountIdx - 1.
				encoder genStoreTemp: (tempIdxMap at: blockId) first.
				encoder genPushSpecialLiteral: 1.
				encoder genSendSpecial: 1 numArgs: 1.
				encoder genStorePopLiteralVar: litInvocationCountIdx - 1].
			
			type == #begin ifTrue: [ | tempIdxInfo |
				tempIdxInfo := tempIdxMap at: blockId.
				tempIdxInfo first  ~~ tempIdxInfo last ifTrue: [
					"(encoder instVarNamed: #stream) position: interval start - 2.
					encoder genPushTemp: tempIdxInfo second.
					encoder genPushSpecialLiteral: nil.
					encoder genStorePopTemp: tempIdxInfo second"
					encoder genPushTemp: tempIdxInfo second.
					encoder genStorePopTemp: tempIdxInfo first.
					encoder genPushSpecialLiteral: nil.
					encoder genStorePopTemp: tempIdxInfo second]].
	
			(type == #begin or: [type == #beginRoot]) ifTrue: [
				nextBlockIdx := nextBlockIdx + 1.

				"enter send"
				encoder genPushLiteralVar: litTracerIdx - 1.
				encoder genPushLiteralVar: (blockIdentifierLiterals detect: [:each | each value second = blockId asString]) key - 1.
				encoder genPushTemp: (tempIdxMap at: blockId) first.
				encoder genSend: litEnterIdx - 1 numArgs: 2.
				encoder genPop].
			
			type == #beforeBlock ifTrue: [ | closure numBlockLocalTemps blockInfo |
				blockInfo := (blockIdentifierLiterals detect: [:each | each value second = blockId asString]) value.
				numBlockLocalTemps := blockInfo last asInteger.
				
				encoder genPushTempLong: (tempIdxMap at: (parentBlockMap at: blockId)) first.
				closure := self parseClosureCreationByteCodeFor: method withEncoder: encoder.
				self rewriteClosureCreationByteCodeFor: method withEncoder: encoder numArgs: (closure at: #numArgs) numTemps: (closure at: #numTemps) + 1.
				tempIdxMap at: blockId put:  "zero-based" 
					{
						(closure at: #numTemps "copied temps") 
						+ (numBlockLocalTemps "block local temps")
						+ (closure at: #numArgs "block arguments").
						
						(closure at: #numTemps "copied temps") 
						+ (closure at: #numArgs "block arguments")
					}].
			
			(type == #endBlock or: [type == #endMethod]) ifTrue: [
				"exit send"
				encoder genPushLiteralVar: litTracerIdx - 1.
				encoder genPushLiteralVar: (blockIdentifierLiterals detect: [:each | each value second = blockId asString]) key - 1.
				encoder genPushTemp: (tempIdxMap at: blockId) first.
				encoder genPushSpecialLiteral: type == #endMethod. "returns?"
				encoder genSend: litExitIdx - 1 numArgs: 3.
				encoder genPop].
			
			self assert: encoder methodStreamPosition == interval stop].
	
		"self rewriteHeaderOf: newMethod numTemps: newMethod numTemps + 1"
		
	] valueUnpreemptively.

	config state: #active.
	self assert: (self hasActiveTracing: method).