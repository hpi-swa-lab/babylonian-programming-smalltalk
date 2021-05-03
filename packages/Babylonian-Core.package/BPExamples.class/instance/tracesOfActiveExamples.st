tracing
tracesOfActiveExamples
	
	^ self activeExamples collect: [:anExample | anExample currentTrace]