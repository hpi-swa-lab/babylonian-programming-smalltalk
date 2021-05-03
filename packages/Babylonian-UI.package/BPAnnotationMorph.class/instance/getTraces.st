private
getTraces
	
	^ BPActiveExamples value paddedTracesOfActiveExamples
		reject: [:aTrace | aTrace isNil]
		