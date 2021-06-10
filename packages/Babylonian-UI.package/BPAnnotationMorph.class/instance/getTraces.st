private
getTraces
	
	^ BPExamples value paddedTracesOfActiveExamples
		reject: [:aTrace | aTrace isNil]
		