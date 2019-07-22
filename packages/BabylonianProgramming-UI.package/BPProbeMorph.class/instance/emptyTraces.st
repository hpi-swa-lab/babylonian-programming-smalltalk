private
emptyTraces

	^ self methodReference 
		ifNil: [ "Because we may run as part of a test without a compiled method --pre"
			#()] 
		ifNotNil: [:methodReference | methodReference compiledMethod bpExamples collect: [:example | 
			BPTrace new example: example; yourself]]