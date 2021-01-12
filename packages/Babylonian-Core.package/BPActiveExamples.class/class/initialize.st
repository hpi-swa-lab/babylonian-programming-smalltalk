class initialization
initialize
	
	Smalltalk addToShutDownList: self.
	Smalltalk globals removeKey: #bpGlobalActiveExamples. 