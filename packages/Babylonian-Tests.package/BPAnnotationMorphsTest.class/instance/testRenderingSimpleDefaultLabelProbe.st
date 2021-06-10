tests
testRenderingSimpleDefaultLabelProbe
	
	| renderedSource probeMorph |
	probeMorph := (self getProbeWithId: 1 withLabel: nil withExpression: nil) asMorph.
	probeMorph setLabelButtonClicked.
	renderedSource := self getSourceFor: probeMorph.
	self assert: ('method
	<exampleNamed: ''example 1''>
^ "<bpProbe id: 1 label: ''{1}>>{2}-1''>"2 + 3"</bpProbe>"' format: {methodReference classSymbol . methodReference methodSymbol first})
		equals: renderedSource asString