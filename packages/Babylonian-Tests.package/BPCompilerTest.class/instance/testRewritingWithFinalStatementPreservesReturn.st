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
	true ifTrue: [^ (self bpTrace: [2 + 3] forProbe: 1 inContext: thisContext)].'