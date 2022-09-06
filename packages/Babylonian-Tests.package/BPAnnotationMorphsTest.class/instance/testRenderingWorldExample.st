tests
testRenderingWorldExample
		| example renderedSource anchorAttribute examplesAnnotation examplesMorph |
	source := 'method
^ 2 + 3' asText.
	example := BPWorldExampleReference new
		method: methodReference compiledMethod;
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
	<worldExampleNamed: ''world example''>
^ 2 + 3' equals: renderedSource
	