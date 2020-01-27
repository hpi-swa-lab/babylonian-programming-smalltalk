tests - block tracing
testRewritingWithFinalStatementPreservesReturn

	self 
		assertCompilerRewrites: 
'method
	<exampleNamed: ''example 1''>
	true ifTrue: [^ "<bpProbe id: 1>"2 + 3"</bpProbe>"].'
		to:
'method
	<layer: #bpInstrumented>
	<exampleNamed: ''example 1''>
	self bpBlock: 1 enteredAt: thisContext.
self bpBlock: 1 leftWith: (true ifTrue: [self bpBlock: 2 enteredAt: thisContext.
^ self bpBlock: 2 leftWith: ((self bpTrace: [2 + 3] forProbe: 1 inContext: thisContext)) at: thisContext]) at: thisContext.'