tests
testLiveSpecimenExample
	
	| example specimen reference |
	specimen := Object new.
	reference := BPSpecimenReference new
		specimen: specimen;
		yourself.
	example := (BPTestExamplesClass>>#methodWithLiveSpecimen:) bpExamples first
		receiverConstructor: reference;
		argumentScripts: {reference}.
	self 
		assert: specimen equals: example newArguments first;
		assert: specimen equals: example newReceiver.