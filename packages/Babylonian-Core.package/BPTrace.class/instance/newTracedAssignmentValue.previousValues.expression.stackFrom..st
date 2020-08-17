private
newTracedAssignmentValue: aValue previousValues: variableAndValuesTuples expression: expressionSource stackFrom: aContext

	^ BPTraceAssignmentValue
			value: aValue bpSnapshot
			previousValues: variableAndValuesTuples
			stack: ((aContext stackOfSize: 100) collect: [:context | {context receiver identityHash . context selector}])