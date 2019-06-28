tests
testRenderingSimpleProbe

	| anchorAttribute renderedSource probeMorph |
	probeMorph := BPProbeMorph new
		probeId: 1;
		yourself.
	anchorAttribute := TextAnchor new anchoredMorph: probeMorph.
	source addAttribute: anchorAttribute from: expressionInterval start to: expressionInterval stop.
	
	renderedSource := source asBPSource.
	self assert: 'method
<example>
^ <bpProbe>2 + 3</bpProbe>' equals: renderedSource asString.