private
newTracedAssignmentValue: aValue previousValues: variableAndValuesTuples expression: expressionSource stackFrom: aContext
	
	^ BPTraceAssignmentValue
			value: aValue bpSnapshot
			identityHash: aValue identityHash
			previousValues: variableAndValuesTuples
			stack: (self stackFrom: aContext)