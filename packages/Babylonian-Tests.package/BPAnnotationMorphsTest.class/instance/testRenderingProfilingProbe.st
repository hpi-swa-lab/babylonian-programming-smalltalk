tests
testRenderingProfilingProbe

	| anchorAttribute renderedSource probeMorph |
	probeMorph := BPProfilingProbe new
		id: 1;
		methodReference: methodReference;
		asMorph.
	anchorAttribute := BPTextDecoration new anchoredMorph: probeMorph.
	source addAttribute: anchorAttribute from: expressionInterval start to: expressionInterval stop.
	
	renderedSource := source asBPSource.
	self assert: 'method
	<exampleNamed: ''example 1''>
^ "<bpProfilingProbe id: 1>"2 + 3"</bpProfilingProbe>"' equals: renderedSource asString