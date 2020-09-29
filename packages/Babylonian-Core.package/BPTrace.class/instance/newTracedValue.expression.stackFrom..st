private
newTracedValue: aValue expression: expressionSource stackFrom: aContext
	
	^ BPTraceValue
			value: aValue bpSnapshot
			stack: (self stackFrom: aContext)