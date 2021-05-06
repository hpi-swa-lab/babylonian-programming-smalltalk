accessing
add: aBPExample
	
	mutex critical: [examples add: aBPExample].
	self changed: #bpExamples.