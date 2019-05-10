recording
trace: aValue forId: aProbeId forExpression: expressionSource inContext: aContext 

	self 
		addTracedValue: (self newTracedValue: aValue expression: expressionSource stackFrom: aContext)
		forProbe: aProbeId