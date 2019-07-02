tests
testRenderingSimpleProbe

	| anchorAttribute renderedSource probeMorph |
	probeMorph := BPProbe new
		id: 1;
		asMorph.
	anchorAttribute := TextAnchor new anchoredMorph: probeMorph.
	source addAttribute: anchorAttribute from: expressionInterval start to: expressionInterval stop.
	
	renderedSource := source asBPSource.
	self assert: 'method
<example>
^ "<bpProbe id: 1>"2 + 3"</bpProbe>"' equals: renderedSource asString.