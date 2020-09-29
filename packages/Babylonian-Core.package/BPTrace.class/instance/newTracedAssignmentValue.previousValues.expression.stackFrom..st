private
newTracedAssignmentValue: aValue previousValues: variableAndValuesTuples expression: expressionSource stackFrom: aContext
	
	^ BPTraceAssignmentValue
			value: aValue bpSnapshot
			previousValues: variableAndValuesTuples
			stack: (self stackFrom: aContext)