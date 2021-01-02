tracing
tracesOfActiveExamples

	^ self examples collect: [:anExample | anExample currentTrace]