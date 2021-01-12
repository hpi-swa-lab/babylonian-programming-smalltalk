tests
testCanBeCreatedIn
	
	self assert: true equals: (BPExampleToTest new canBeCreated: 'notExisting' in: self class).