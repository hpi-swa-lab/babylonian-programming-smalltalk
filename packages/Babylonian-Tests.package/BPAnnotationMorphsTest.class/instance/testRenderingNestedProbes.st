tests
testRenderingNestedProbes

	| anchorAttribute renderedSource probeMorph |
	probeMorph := BPProbe new
		id: 1;
		methodReference: methodReference;
		asMorph.
	anchorAttribute := BPTextDecoration new anchoredMorph: probeMorph.
	source addAttribute: anchorAttribute from: expressionInterval start to: expressionInterval stop.
	probeMorph := BPProbe new
		id: 2;
		methodReference: methodReference;
		asMorph.
	anchorAttribute := BPTextDecoration new anchoredMorph: probeMorph.
	source addAttribute: anchorAttribute from: expressionInterval start to: expressionInterval stop.
	
	renderedSource := source asBPSource.
	self assert: 'method
	<exampleNamed: ''example 1''>
^ "<bpProbe id: 1>""<bpProbe id: 2>"2 + 3"</bpProbe>""</bpProbe>"' equals: renderedSource asString