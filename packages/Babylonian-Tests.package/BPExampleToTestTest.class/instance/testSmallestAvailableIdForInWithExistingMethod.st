tests
testSmallestAvailableIdForInWithExistingMethod
	
	self assert: 1 equals: (BPExampleToTest new smallestAvailableIdFor: 'testSmallestAvailableIdForInNoneExistingMethod' in: self class).