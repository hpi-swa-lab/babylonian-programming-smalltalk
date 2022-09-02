tests
testRenderingSimpleTemporaryProbe

	| anchorAttribute renderedSource probeMorph |
	probeMorph := BPTemporaryProbe new
		id: 1;
		methodReference: methodReference;
		asMorph.
	anchorAttribute := BPTextDecoration new anchoredMorph: probeMorph.
	source addAttribute: anchorAttribute from: expressionInterval start to: expressionInterval stop.
	
	renderedSource := source asBPSource.
	self assert: 'method
	<exampleNamed: ''example 1''>
^ 2 + 3' equals: renderedSource asString