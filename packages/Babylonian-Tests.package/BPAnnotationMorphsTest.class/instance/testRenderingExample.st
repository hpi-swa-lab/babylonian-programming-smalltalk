tests
testRenderingExample
		| example renderedSource anchorAttribute examplesAnnotation examplesMorph |
	source := 'method
^ 2 + 3' asText.
	example := BPMethodExample new
		method: methodReference compiledMethod;
		exampleName: 'example 1';
		receiverConstructor: #tester;
		argumentScripts: #('Object new' #(1 2 3) nil);
		setUpScript: #basicSetUp;
		tearDownScript: '"do nothing"';
		yourself.
	BPExamples value add: example.
	examplesAnnotation := BPExamplesAnnotation new
		methodReference: methodReference;
		yourself.
	examplesMorph := examplesAnnotation asMorph.
	anchorAttribute := BPTextDecoration new anchoredMorph: examplesMorph.
	source addAttribute: anchorAttribute from: 1 to: 1.
	
	renderedSource := source asBPSource.
	self assert: 'method
	<exampleNamed: ''example 1'' setUp: #basicSetUp tearDown: ''"do nothing"'' self: #tester with: ''Object new'' with: #(1 2 3) with: nil>
^ 2 + 3' equals: renderedSource
	