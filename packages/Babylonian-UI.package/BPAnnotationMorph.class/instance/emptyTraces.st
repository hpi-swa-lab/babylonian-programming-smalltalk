private
emptyTraces

	^ BPActiveExamples value examples collect: [:e | 
		BPTrace new example: e; yourself]