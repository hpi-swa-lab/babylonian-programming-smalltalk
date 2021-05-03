*Babylonian-Core
bpRemoveExample: anExample
	
	BPExamples value remove: anExample.
	self bpExamples remove: anExample ifAbsent: [].
	self bpExamples changed: #bpExamples.