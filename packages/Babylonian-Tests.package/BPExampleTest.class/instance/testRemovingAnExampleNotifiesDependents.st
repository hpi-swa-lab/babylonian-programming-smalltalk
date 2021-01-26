tests - dependents
testRemovingAnExampleNotifiesDependents
	
	| example |
	method bpExamples addDependent: self.
	example := method bpNewExampleFrom: BPMethodExample.
	method bpRemoveExample: example.
	self 
		assert: 2 equals: recordedEvents size;
		assert: #bpExamples equals: recordedEvents first.