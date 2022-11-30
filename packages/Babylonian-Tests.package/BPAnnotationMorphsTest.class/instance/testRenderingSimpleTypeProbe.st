tests
testRenderingSimpleTypeProbe

	| anchorAttribute renderedSource probeMorph |
	probeMorph := BPTypeProbe new
		id: 1;
		methodReference: methodReference;
		asMorph.
	anchorAttribute := BPTextDecoration new anchoredMorph: probeMorph.
	source addAttribute: anchorAttribute from: expressionInterval start to: expressionInterval stop.
	
	renderedSource := source asBPSource.
	self assert: 'method
	<exampleNamed: ''example 1''>
^ "<bpTypeProbe id: 1>"2 + 3"</bpTypeProbe>"' equals: renderedSource asString