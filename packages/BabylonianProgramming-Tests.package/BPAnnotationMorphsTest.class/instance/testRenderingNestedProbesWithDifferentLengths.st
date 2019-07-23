tests
testRenderingNestedProbesWithDifferentLengths

	| anchorAttribute renderedSource probeMorph |
	probeMorph := BPProbe new
		id: 1;
		methodReference: methodReference;
		asMorph.
	anchorAttribute := TextAnchor new anchoredMorph: probeMorph.
	source addAttribute: anchorAttribute from: expressionInterval start to: expressionInterval stop.
	probeMorph := BPProbe new
		id: 2;
		methodReference: methodReference;
		asMorph.
	anchorAttribute := TextAnchor new anchoredMorph: probeMorph.
	source addAttribute: anchorAttribute from: expressionInterval start + 2 to: expressionInterval start + 2.
	
	renderedSource := source asBPSource.
	self assert: 'method
<exampleNamed: ''example 1''>
^ "<bpProbe id: 1>"2 "<bpProbe id: 2>"+"</bpProbe>" 3"</bpProbe>"' equals: renderedSource asString.