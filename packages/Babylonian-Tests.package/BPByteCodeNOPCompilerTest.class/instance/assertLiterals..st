nop-tests
assertLiterals: aCompiledMethod
	
	| blockIntervals |
	self assert: (aCompiledMethod hasLiteral: (Environment current declarationOf: #BPByteCodeCallgraphTracer)).
	
	blockIntervals := aCompiledMethod embeddedBlockClosures collect: [:block | block blockCreationPC to: block endPC].
	blockIntervals add: (aCompiledMethod initialPC to: aCompiledMethod endPC).
	"blockIntervals := blockIntervals collect: [:interval | interval - aCompiledMethod initialPC].
	blockIntervals sort: [:a :b | a start < b start].
	
	blockIntervals := blockIntervals withIndexCollect: [:currentInterval :i |
		blockIntervals
			collect: [:interval | interval start - 4 to: interval stop - 4] 
			from: i + 1
			to: blockIntervals size.
		currentInterval start to: currentInterval stop - 8]."
	
	"self 
		assert: blockIntervals size 
		equals: (aCompiledMethod literals select: [:literal | 
			literal isVariableBinding 
			and: [literal key beginsWith: 'bpClassNameMethodNameBlockIdx-'] 
			and: [literal value == 0]]) size."
	
	self assert: (aCompiledMethod hasLiteral: #enter:invocation:).
	self assert: (aCompiledMethod hasLiteral: #enter:invocation:).