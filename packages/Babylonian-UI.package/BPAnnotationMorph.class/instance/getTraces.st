private
getTraces

	^ BPActiveExamples value tracesOfActiveExamples
		reject: [:t | t isNil]
		