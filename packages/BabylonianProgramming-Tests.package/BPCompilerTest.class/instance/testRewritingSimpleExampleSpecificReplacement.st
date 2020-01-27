tests
testRewritingSimpleExampleSpecificReplacement

	self 
		assertCompilerRewrites: 
'method
	<exampleNamed: ''example 1''>
	"<bpReplace for: ''Class1>>method>>#''''example 1'''''' with: [100]>"2 + 3"</bpReplace>"'
		to:
'method
	<layer: #bpInstrumented>
	<exampleNamed: ''example 1''>
	self bpBlock: 1 enteredAt: thisContext.
self bpBlock: 1 leftWith: ((self bpReplace: [2 + 3] with: [100] for: ''Class1>>method>>#''''example 1'''''')) at: thisContext'