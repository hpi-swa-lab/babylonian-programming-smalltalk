tests - dependents
testRemovingAnExampleNotifiesDependents
	
	| example |
	BPExamples value addDependent: self.
	example := method bpNewExampleFrom: BPMethodExample.
	method bpRemoveExample: example.
	self 
		assert: 2 equals: recordedEvents size;
		assert: #bpExamples equals: recordedEvents first.