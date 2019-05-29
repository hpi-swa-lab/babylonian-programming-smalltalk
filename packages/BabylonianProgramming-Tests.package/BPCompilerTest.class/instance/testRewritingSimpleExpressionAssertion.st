tests
testRewritingSimpleExpressionAssertion

	self 
		assertCompilerRewrites: 
'method
	<exampleNamed: ''example 1''>
	"<bpAssert for: ''example 1'' that: [2 = 2]>"2 + 3"</bpReplace>"'
		to:
'method
<layer: #bpInstrumented>
< exampleNamed: ''example 1'' >
(self bpAssertAfter: [2 + 3] that: [2 = 2] forAssertion: 1 given: ''example 1'' inContext: thisContext)'