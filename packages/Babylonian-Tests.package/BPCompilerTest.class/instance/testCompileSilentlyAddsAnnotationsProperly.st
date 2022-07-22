tests
testCompileSilentlyAddsAnnotationsProperly
	"This test fails because compileSilently does not save source, so it removes the annotations."
	| method |
	[BPTestExamplesClass compileSilently: 'methodForCompileSilentlyTest
	<exampleNamed: ''example 1''>
	"<bpReplace for: ''Class1>>method>>#''''example 1'''''' with: [100]>"2 + 3"</bpReplace>"'.
	method := BPTestExamplesClass>>#methodForCompileSilentlyTest.
	self assert: 1 equals: method bpExamples size.
	self assert: 2 equals: method bpAnnotations size.]
		ensure: [BPTestExamplesClass removeSelector: #methodForCompileSilentlyTest]
	
	