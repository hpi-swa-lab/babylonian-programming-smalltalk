tests
testRenderingExample

	| example exampleAnnotation exampleMorph renderedSource anchorAttribute |
	source := ('method
',Character startOfHeader,'
^ 2 + 3') asText.	
	example := BPExample new
		method: methodReference compiledMethod;
		exampleName: 'example 1';
		argumentScripts: #('Object new' . #(1 2 3) . nil);
		yourself.
	exampleAnnotation := BPExampleAnnotation new
		exampleName: 'example 1';
		methodReference: methodReference;
		yourself.
	exampleMorph := exampleAnnotation asMorph.
	anchorAttribute := BPTextAnchor new anchoredMorph: exampleMorph.
	source addAttribute: anchorAttribute from: 8 to: 9.
	
	renderedSource := source asBPSource.
	self assert: 'method
<exampleNamed: ''example 1'' self: #tester with: ''Object new'' with: #(1 2 3) with: nil>
^ 2 + 3' equals: renderedSource.
	