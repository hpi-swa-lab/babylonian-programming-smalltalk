tests
testLiveSpecimanExampleDoesNotExist

	| example testRegistry |
	testRegistry := BPSpecimenRegistry new.
	BPActiveSpecimenRegistry value: testRegistry during: [		
		example := (BPTestExamplesClass>>#methodWithLiveSpecimen:) bpExamples first.
		self assert: nil equals: example newArguments first].