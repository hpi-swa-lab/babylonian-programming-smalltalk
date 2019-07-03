tests
testRenderingNestedProbes

	| anchorAttribute renderedSource probeMorph |
	probeMorph := BPProbe new
		id: 1;
		asMorph.
	anchorAttribute := TextAnchor new anchoredMorph: probeMorph.
	source addAttribute: anchorAttribute from: expressionInterval start to: expressionInterval stop.
	probeMorph := BPProbe new
		id: 2;
		asMorph.
	anchorAttribute := TextAnchor new anchoredMorph: probeMorph.
	source addAttribute: anchorAttribute from: expressionInterval start to: expressionInterval stop.
	
	renderedSource := source asBPSource.
	self assert: 'method
<example>
^ "<bpProbe id: 1>""<bpProbe id: 2>"2 + 3"</bpProbe>""</bpProbe>"' equals: renderedSource asString.