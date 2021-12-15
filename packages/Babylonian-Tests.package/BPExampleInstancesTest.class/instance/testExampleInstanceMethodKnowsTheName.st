tests
testExampleInstanceMethodKnowsTheName
	
	self assert: 'blue star' equals: (BPEuropeanFlag class >> #blueStar) exampleInstanceName.
	self assert: 'small star' equals: (BPEuropeanFlag class >> #smallStar) exampleInstanceName.