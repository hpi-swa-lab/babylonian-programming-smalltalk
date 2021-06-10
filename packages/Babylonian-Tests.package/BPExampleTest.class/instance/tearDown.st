running
tearDown
	
	method bpExamples removeDependent: self.
	BPExamples value removeDependent: self.
	recordedEvents := nil.