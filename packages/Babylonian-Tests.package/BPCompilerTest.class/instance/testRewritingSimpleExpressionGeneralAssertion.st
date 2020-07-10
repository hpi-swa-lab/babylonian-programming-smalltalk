tests
testRewritingSimpleExpressionGeneralAssertion

	self 
		assertCompilerRewrites: 
'method
	<exampleNamed: ''example 1''>
	"<bpAssert id: 1 that: [2 = 2]>"2 + 3"</bpReplace>"'
		to:
'method
	<layer: #bpInstrumented>
	<exampleNamed: ''example 1''>
	self bpBlock: 1 enteredAt: thisContext.
self bpBlock: 1 leftWith: ((self bpAssertAfter: [2 + 3] that: [2 = 2] forAssertion: 1 given: ''all examples'' inContext: thisContext)) at: thisContext'