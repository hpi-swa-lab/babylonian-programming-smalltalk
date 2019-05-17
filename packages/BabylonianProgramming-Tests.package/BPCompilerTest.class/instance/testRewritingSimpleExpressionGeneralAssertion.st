tests
testRewritingSimpleExpressionGeneralAssertion

	self 
		assertCompilerRewrites: 
'method
	<exampleNamed: ''example 1''>
	"<bpAssert that: [2 = 2]>"2 + 3"</bpReplace>"'
		to:
'method
<layer: #bpInstrumented>
< exampleNamed: ''example1'' >
(self bpAssertAfter: [2 + 3] that: [2 = 2] forAssertion: 1 inContext: thisContext)'