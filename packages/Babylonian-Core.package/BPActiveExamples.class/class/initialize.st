class initialization
initialize
	
	Smalltalk addToShutDownList: self.
	Smalltalk removeKey: #bpGlobalActiveExamples. 