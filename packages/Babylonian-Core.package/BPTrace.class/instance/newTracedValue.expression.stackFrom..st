private
newTracedValue: aValue expression: expressionSource stackFrom: aContext
	
	^ BPTraceValue
			value: aValue bpSnapshot
			identityHash: aValue identityHash
			stack: (self stackFrom: aContext)