tests
testExampleInstanceMethodKnowsTheName
	
	self assert: 'blue star' equals: (BPEuropeanFlag class >> #blueStar) exampleInstanceName.
	self assert: '' equals: (BPEuropeanFlag class >> #smallStar) exampleInstanceName.