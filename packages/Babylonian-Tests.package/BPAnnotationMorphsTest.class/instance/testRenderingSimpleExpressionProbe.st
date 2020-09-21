tests
testRenderingSimpleExpressionProbe
	
	| anchorAttribute renderedSource probeMorph |
	probeMorph := BPProbe new
		id: 1;
		methodReference: methodReference;
		expression: '[:result | result asFloat]';
		asMorph.
	anchorAttribute := BPTextAnchor new anchoredMorph: probeMorph.
	source addAttribute: anchorAttribute from: expressionInterval start to: expressionInterval stop.
	
	renderedSource := source asBPSource.
	self assert: 'method
	<exampleNamed: ''example 1''>
^ "<bpProbe id: 1 expression: [:result | result asFloat]>"2 + 3"</bpProbe>"' equals: renderedSource asString.