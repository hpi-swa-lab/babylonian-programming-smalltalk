tests
testRenderingNestedProbesWithDifferentLengths

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
	source addAttribute: anchorAttribute from: expressionInterval start + 2 to: expressionInterval start + 2.
	
	renderedSource := source asBPSource.
	self assert: 'method
<example>
^ "<bpProbe>"2 "<bpProbe>"+"</bpProbe>" 3"</bpProbe>"' equals: renderedSource asString.