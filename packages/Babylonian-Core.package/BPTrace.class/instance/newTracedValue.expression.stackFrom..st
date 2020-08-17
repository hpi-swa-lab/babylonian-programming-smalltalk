private
newTracedValue: aValue expression: expressionSource stackFrom: aContext

	^ BPTraceValue
			value: aValue bpSnapshot
			stack: ((aContext stackOfSize: 100) collect: [:context | {context receiver identityHash . context selector}])