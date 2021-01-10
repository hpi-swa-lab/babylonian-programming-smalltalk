tests
testSmallestAvailableIdForInWithExistingMethod1
	
	self assert: 2 equals: (BPExampleToTest new smallestAvailableIdFor: 'testSmallestAvailableIdForInWithExistingMethod' in: self class).