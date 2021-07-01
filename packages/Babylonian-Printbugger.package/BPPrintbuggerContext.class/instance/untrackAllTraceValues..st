private
untrackAllTraceValues: aCollectionOfTraceValues
	
	aCollectionOfTraceValues do: [:aTraceValue | self untrackTraceValue: aTraceValue].