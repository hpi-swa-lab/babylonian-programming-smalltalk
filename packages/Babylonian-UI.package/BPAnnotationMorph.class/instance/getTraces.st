private
getTraces

	^ BPActiveExamples value tracesOfActiveExamples
		reject: [:aTrace | aTrace isNil]
		