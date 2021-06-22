accessing
receiver: anObject
	
	self receiverMockTree: (BPMockTree for: (self ensureMockExistsFor: anObject) in: self).