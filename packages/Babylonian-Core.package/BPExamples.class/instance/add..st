accessing
add: aBPExample
	
	<bpRelevantMethod>
	mutex critical: [examples add: aBPExample].
	self changed: #bpExamples.