tests
testRewritingNestedReplacements

	self 
		assertCompilerRewrites: 
'method
	<exampleNamed: ''example 1''>
	<exampleNamed: ''example 2''>
	"<bpReplacement for: ''example 1'' value: 10>""<bpReplacement for: ''example 2'' value: 5>"2 + 3"</bpReplacement>""</bpReplacement>"'
		to:
'method
< exampleNamed: ''example1'' > < exampleNamed: ''example2'' >
(self bpReplace: [(self bpReplace: [2 + 3] with: 5 for: ''example 2'' )] with: 10 for: ''example 1'' )'