accessing
remove: aBPExample
	
	mutex critical: [
		examples remove: aBPExample ifAbsent: ["dont care"].
		aBPExample ensureTerminatedProcess].
	aBPExample removeDependent: self.
	self changed: #bpExamples.