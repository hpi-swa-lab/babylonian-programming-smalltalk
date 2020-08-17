tests
testRewritingNestedReplacements

	self 
		assertCompilerRewrites: 
'method
	<exampleNamed: ''example 1''>
	<exampleNamed: ''example 2''>
	"<bpReplace for: ''example 1'' with: [10]>""<bpReplace for: ''example 2'' with: [5]>"2 + 3"</bpReplace>""</bpReplace>".
	"and even
more source". 10 negated.'
		to:
'method
	<layer: #bpInstrumented>
	<exampleNamed: ''example 1''>
	<exampleNamed: ''example 2''>
	self bpBlock: 1 enteredAt: thisContext.
(self bpReplace: [(self bpReplace: [2 + 3] with: [5] for: ''example 2'')] with: [10] for: ''example 1'').
	"and even
more source". self bpBlock: 1 leftWith: (10 negated) at: thisContext.'