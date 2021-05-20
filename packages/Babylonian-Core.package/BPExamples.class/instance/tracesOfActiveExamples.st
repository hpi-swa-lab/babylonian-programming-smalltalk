tracing
tracesOfActiveExamples
	
	<bpRelevantMethod>
	^ self activeExamples collect: [:anExample | anExample currentTrace]