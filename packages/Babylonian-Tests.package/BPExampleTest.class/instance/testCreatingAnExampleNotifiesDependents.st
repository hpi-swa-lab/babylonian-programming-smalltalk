tests - dependents
testCreatingAnExampleNotifiesDependents
	
	| example |
	method bpExamples addDependent: self.
	example := method bpNewExampleFrom: BPMethodExample.
	
	self 
		assert: 1 equals: recordedEvents size;
		assert: #bpExamples equals: recordedEvents first.