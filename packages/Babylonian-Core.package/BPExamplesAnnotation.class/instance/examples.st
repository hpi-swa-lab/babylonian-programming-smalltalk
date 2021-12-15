accessing
examples
	 
	self methodReference isValid ifFalse: [^ #()].
	^ (BPExamples value examplesForMethod: self methodReference compiledMethod) asArray