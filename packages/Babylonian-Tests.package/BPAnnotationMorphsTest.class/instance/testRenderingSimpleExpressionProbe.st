tests
testRenderingSimpleExpressionProbe
	
	| renderedSource probeMorph |
	probeMorph := (self getProbeWithId: 1 withLabel: nil withExpression: '[:result | result asFloat]') asMorph.
	renderedSource := self getSourceFor: probeMorph.
	self assert: 'method
	<exampleNamed: ''example 1''>
^ "<bpProbe id: 1 expression: [:result | result asFloat]>"2 + 3"</bpProbe>"' equals: renderedSource asString