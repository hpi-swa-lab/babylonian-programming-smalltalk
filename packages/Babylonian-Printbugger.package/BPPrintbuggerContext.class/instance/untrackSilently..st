private
untrackSilently: aBPExample
	
	aBPExample traceValues do: [:aTraceValue | self untrackTraceValue: aTraceValue].
	aBPExample removeDependent: self.