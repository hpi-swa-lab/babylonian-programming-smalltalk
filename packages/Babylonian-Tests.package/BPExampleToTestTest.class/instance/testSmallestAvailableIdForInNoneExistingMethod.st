tests
testSmallestAvailableIdForInNoneExistingMethod
	
	self assert: 1 equals: (BPExampleToTest new smallestAvailableIdFor: 'IDontExist' in: self class).