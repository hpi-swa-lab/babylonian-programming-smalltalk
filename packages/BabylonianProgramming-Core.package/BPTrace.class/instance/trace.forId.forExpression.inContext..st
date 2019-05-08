recording
trace: aValue forId: aProbeId forExpression: expressionSource inContext: aContext 

	self 
		addTracedValue: (BPTraceValue
			value: aValue
			expression: expressionSource
			stack: ((aContext stackOfSize: 100) collect: [:context | {context receiver identityHash . context selector}])) 
		for: aProbeId