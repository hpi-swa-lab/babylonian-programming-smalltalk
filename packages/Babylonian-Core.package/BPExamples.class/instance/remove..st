accessing
remove: aBPExample
	
	mutex critical: [
		examples remove: aBPExample ifAbsent: ["dont care"].
		aBPExample ensureTerminatedProcess].
	self changed: #bpExamples.