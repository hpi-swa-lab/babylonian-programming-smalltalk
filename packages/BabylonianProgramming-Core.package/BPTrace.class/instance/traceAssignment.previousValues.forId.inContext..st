recording
traceAssignment: anObject previousValues: variableValueTuples forId: probeId inContext: aContext

	self 
		addTracedValue: (self newTracedAssignmentValue: anObject previousValues: variableValueTuples expression: '' stackFrom: aContext)
		forProbe: probeId