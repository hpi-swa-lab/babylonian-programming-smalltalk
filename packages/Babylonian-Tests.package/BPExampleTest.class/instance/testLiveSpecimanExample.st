tests
testLiveSpecimanExample
	
	| example specimen testRegistry |
	testRegistry := BPSpecimenRegistry new.
	specimen := Object new.
	testRegistry at: #'df5bc47e-74c8-6445-b6bb-98352a339f3e' put: specimen. 
	BPActiveSpecimenRegistry value: testRegistry during: [		
		example := (BPTestExamplesClass>>#methodWithLiveSpecimen:) bpExamples first.
		self 
			assert: specimen equals: example newArguments first;
			assert: specimen equals: example newReceiver].