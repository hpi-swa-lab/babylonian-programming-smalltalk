tests
testRenderingNestedProbes

	| anchorAttribute renderedSource probeMorph |
	probeMorph := BPProbeMorph new
		probeId: 1;
		yourself.
	anchorAttribute := TextAnchor new anchoredMorph: probeMorph.
	source addAttribute: anchorAttribute from: expressionInterval start to: expressionInterval stop.
	probeMorph := BPProbeMorph new
		probeId: 2;
		yourself.
	anchorAttribute := TextAnchor new anchoredMorph: probeMorph.
	source addAttribute: anchorAttribute from: expressionInterval start to: expressionInterval stop.
	
	renderedSource := source asBPSource.
	self assert: 'method
<example>
^ "<bpProbe>""<bpProbe>"2 + 3"</bpProbe>""</bpProbe>"' equals: renderedSource asString.