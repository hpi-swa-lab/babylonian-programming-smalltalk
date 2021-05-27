class initialization
initialize
	
	Smalltalk addToShutDownList: self.
	Smalltalk globals removeKey: #bpGlobalExamples ifAbsent: ["dont care"]. 