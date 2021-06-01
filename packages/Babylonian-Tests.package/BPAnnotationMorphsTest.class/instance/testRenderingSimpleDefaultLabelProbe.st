tests
testRenderingSimpleDefaultLabelProbe
	
	| anchorAttribute renderedSource probeMorph |
	probeMorph := BPProbe new
		id: 1;
		methodReference: methodReference;
		asMorph.
	probeMorph setLabelButtonClicked.
	anchorAttribute := BPTextAnchor new anchoredMorph: probeMorph.
	source addAttribute: anchorAttribute from: expressionInterval start to: expressionInterval stop.
	
	renderedSource := source asBPSource.
	self assert: ('method
	<exampleNamed: ''example 1''>
^ "<bpProbe id: 1 label: ''{1}>>{2}-1''>"2 + 3"</bpProbe>"' format: {methodReference classSymbol . methodReference methodSymbol first})
		equals: renderedSource asString