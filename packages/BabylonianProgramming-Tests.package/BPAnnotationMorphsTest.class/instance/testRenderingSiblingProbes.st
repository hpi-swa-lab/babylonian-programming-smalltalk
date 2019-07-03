tests
testRenderingSiblingProbes

	| anchorAttribute renderedSource probeMorph |
	probeMorph := BPProbe new
		id: 1;
		asMorph.
	anchorAttribute := TextAnchor new anchoredMorph: probeMorph.
	source addAttribute: anchorAttribute from: expressionInterval start to: expressionInterval start.
		probeMorph := BPProbe new
		id: 2;
		asMorph.
	anchorAttribute := TextAnchor new anchoredMorph: probeMorph.
	source addAttribute: anchorAttribute from: expressionInterval start + 4 to: expressionInterval start + 4.
	
	renderedSource := source asBPSource.
	self assert: 'method
<example>
^ "<bpProbe id: 1>"2"</bpProbe>" + "<bpProbe id: 2>"3"</bpProbe>"' equals: renderedSource asString.