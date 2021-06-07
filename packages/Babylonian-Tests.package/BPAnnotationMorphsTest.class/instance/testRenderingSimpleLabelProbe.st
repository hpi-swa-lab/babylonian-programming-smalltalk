tests
testRenderingSimpleLabelProbe
	
	| renderedSource probeMorph |
	probeMorph := (self getProbeWithId: 1 withLabel: '''custom label''' withExpression: nil) asMorph.
	renderedSource := self getSourceFor: probeMorph.
	self assert: 'method
	<exampleNamed: ''example 1''>
^ "<bpProbe id: 1 label: ''custom label''>"2 + 3"</bpProbe>"' equals: renderedSource asString