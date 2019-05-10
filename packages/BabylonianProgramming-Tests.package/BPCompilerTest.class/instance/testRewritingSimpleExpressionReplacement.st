tests
testRewritingSimpleExpressionReplacement

	self 
		assertCompilerRewrites: 
'method
	<exampleNamed: ''example 1''>
	"<bpReplacement for: ''example 1'' value: 10>"2 + 3"</bpReplacement>"'
		to:
'method
< exampleNamed: ''example1'' >
(self bpReplace: [2 + 3] with: 10 for: ''example 1'' )'