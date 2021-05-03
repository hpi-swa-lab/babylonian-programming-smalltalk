tracing
paddedTracesOfActiveExamples
	
	^ self examples collect: [:anExample | 
		anExample currentTrace ifNil: [BPTrace new example: anExample; yourself]]