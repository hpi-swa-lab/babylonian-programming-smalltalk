tracing
paddedTracesOfActiveExamples
	
	^ self activeExamples collect: [:anExample | 
		anExample currentTrace ifNil: [BPTrace new example: anExample; yourself]]