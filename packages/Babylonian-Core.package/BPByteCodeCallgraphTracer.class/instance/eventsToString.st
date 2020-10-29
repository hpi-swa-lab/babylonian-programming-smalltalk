post processing
eventsToString
	
	
	^ String streamContents: [:stringStream | | depth depthAfterExit depthMap printContinuesHere eventStream |
		depth := 0.
		depthAfterExit := nil.
	
		depthMap := Dictionary new.
	
		printContinuesHere := [
			1 to: depth do: [:i | stringStream tab].
			stringStream nextPutAll: '|> CONTINUING HERE'; cr].
		
		eventStream := self eventStream.
	
		stringStream cr.
		
		[eventStream atEnd] whileFalse: [eventStream next caseOf: {
			[#enter] -> [ | parts class selector blockIdx invocationCount |			
				1 to: depth do: [:i | stringStream tab].
				
				parts := eventStream next splitBy: ' >> '.
				class := parts first.
				selector := parts second.
				blockIdx := parts third asInteger.
				"invocation count of the surrounding method. In other words: 'Id' of the context of this block/method, unique per method"
				invocationCount := eventStream next.
				
				stringStream 
					nextPutAll: class;
					nextPutAll: ' >> ';
					nextPutAll: selector.
	
				blockIdx == 1
					ifTrue: [	depthMap at: {class . selector . invocationCount} put: depth]
					ifFalse: [
						stringStream
							nextPutAll: ' [';
							nextPutAll: (blockIdx - 1) asString;
							nextPut: $]].
				
				stringStream
					nextPutAll: ' ctx: '; 
					nextPutAll: invocationCount asString; 
					cr.
				depth := depth + 1].
			[#exit] -> [ | parts class selector blockIdx invocationCount blockReturns |
				parts := eventStream next splitBy: ' >> '.
				class := parts first.
				selector := parts second.
				blockIdx := parts third asInteger.
				"invocation count of the surrounding method. In other words: 'Id' of the context of this block/method, unique per method"
				invocationCount := eventStream next.
				blockReturns := eventStream next.
				
				depth := depth - 1.
				
				self assert: depth >= 0.
				1 to: depth do: [:i | stringStream tab].
				
				blockReturns 
					ifTrue: [stringStream nextPutAll: '^ ']
					ifFalse: [stringStream nextPutAll: '_ '].
					
				stringStream 
					nextPutAll: class;
					nextPutAll: ' >> ';
					nextPutAll: selector.
	
				blockIdx > 1 ifTrue: [
					stringStream
						nextPutAll: ' [';
						nextPutAll: (blockIdx - 1) asString;
						nextPut: $]].
				
				stringStream
					nextPutAll: ' ctx: '; 
					nextPutAll: invocationCount asString; "invocation count of the surrounding method. In other words: 'Id' of the context of this block/method, unique per method"
					cr.
					
				blockReturns ifTrue: [| oldDepth |
					oldDepth := depthMap removeKey: {class . selector . invocationCount}.
					blockIdx > 1 ifTrue: [depth := oldDepth]].
				
				depthAfterExit ifNotNil: [
					depth := depthAfterExit.
					depthAfterExit := nil.
					printContinuesHere value]
				
				"1 to: depth do: [:i | aStream space].
				aStream nextPutAll: data; cr"].
			[#contextSenderChanged] -> [ | depthDelta inChain hasActiveTracing |
				depthDelta := eventStream next.
				inChain := eventStream next.
				hasActiveTracing := eventStream next.
				
				"ignore events when depth didn't change and method that causes the change does not have active tracing."
				(depthDelta ~= 0 or: hasActiveTracing) ifTrue: [
					1 to: depth do: [:i | stringStream tab].
					stringStream nextPutAll: '--------- CONTEXT SENDER CHANGED'.
					inChain ifFalse: [stringStream nextPutAll: ' (NOT IN CHAIN)'].
					stringStream nextPutAll: ' ---------'; cr.
					
					hasActiveTracing 
						ifTrue: [
							depthAfterExit := depth + depthDelta.
							"depth := depth + 1"]
						ifFalse: [depth := depth + depthDelta].
					self assert: depth >= 0.
					
					
					hasActiveTracing ifFalse: [printContinuesHere value]]].
			[#custom] -> [| type data |
				type := eventStream next.
				data := eventStream next.
				stringStream
					nextPutAll: '>>> Custom Event: ';
					nextPutAll: type;
					nextPutAll: ' <<<';
					cr;
					nextPutAll: (data printStringLimitedTo: 1000);
					cr]
		}].
		stringStream flush]