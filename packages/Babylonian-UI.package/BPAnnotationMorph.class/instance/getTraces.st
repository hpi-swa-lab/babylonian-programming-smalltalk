private
getTraces

	^ (((BPTraces value activeExamples collect: [:key | 
			BPTraces value at: key ifAbsent: ["no trace available yet" nil]])) 
		reject: [:v | v isNil])
		