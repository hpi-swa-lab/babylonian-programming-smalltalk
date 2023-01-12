tests
testRenderingExampleWithLiveSpecimen
		| example renderedSource anchorAttribute examplesAnnotation examplesMorph specimenReference |
	source := 'method
^ 2 + 3' asText.
	specimenReference := BPSpecimenReference new
		specimen;
		yourself.
	example := BPMethodExample new
		method: methodReference compiledMethod;
		exampleName: 'example 1';
		receiverConstructor: specimenReference;
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
	<exampleNamed: ''example 1'' setUp: #basicSetUp tearDown: ''"do nothing"'' self: #(#specimen ''nil'') with: ''Object new'' with: #(1 2 3) with: nil>
^ 2 + 3' equals: renderedSource
	