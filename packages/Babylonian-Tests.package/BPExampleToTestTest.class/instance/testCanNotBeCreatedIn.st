tests
testCanNotBeCreatedIn
	
	self assert: false equals: (BPExampleToTest new canBeCreated: 'testCanNotBeCreatedIn' in: self class).