private
trackWithoutSignal: aBPExample
	
	aBPExample traceValues do: [:aTraceValue | self trackTraceValue: aTraceValue].
	aBPExample addDependent: self.
	