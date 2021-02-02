tests
testRenderingExample
	
	| example renderedSource anchorAttribute examplesAnnotation examplesMorph |
	source := ('method
',Character startOfHeader,'
^ 2 + 3') asText.
	example := BPMethodExample new
		method: methodReference compiledMethod;
		exampleName: 'example 1';
		receiverConstructor: #tester;
		argumentScripts: #('Object new' #(1 2 3) nil);
		setUpScript: #basicSetUp;
		tearDownScript: '"do nothing"';
		expectedResult: '5';
		yourself.
	examplesAnnotation := BPExamplesAnnotation new
		examples: {example};
		methodReference: methodReference;
		yourself.
	examplesMorph := examplesAnnotation asMorph.
	anchorAttribute := BPTextAnchor new anchoredMorph: examplesMorph.
	source addAttribute: anchorAttribute from: 8 to: 9.
	
	renderedSource := source asBPSource.
	self assert: 'method
<testRef: ''BPAnnotationMorphsTestTest>>#testExample1''>
^ 2 + 3' equals: renderedSource
	