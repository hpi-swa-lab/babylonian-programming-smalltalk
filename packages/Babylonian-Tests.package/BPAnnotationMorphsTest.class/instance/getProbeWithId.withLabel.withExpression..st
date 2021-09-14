tests
getProbeWithId: aNumber withLabel: aLabelString withExpression: anExpressionString
	
	^ BPProbe new
		id: 1;
		label: aLabelString;
		expression: anExpressionString;
		methodReference: methodReference;
		yourself