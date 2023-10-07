accessing
add: aBPExample
	
	<bpRelevantMethod>
	mutex critical: [examples add: aBPExample].
	aBPExample addDependent: self.
	self changed: #bpExamples.