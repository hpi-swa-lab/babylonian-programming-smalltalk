tests
testRewritingSimpleExpressionReplacement

	self 
		assertCompilerRewrites: 
'method
	<exampleNamed: ''example 1''>
	"<bpReplace for: ''example 1'' with: 10>"2 + 3"</bpReplace>"'
		to:
'method
<layer: #bpInstrumented>
< exampleNamed: ''example1'' >
(self bpReplace: [2 + 3] with: 10 for: ''example 1'' )'