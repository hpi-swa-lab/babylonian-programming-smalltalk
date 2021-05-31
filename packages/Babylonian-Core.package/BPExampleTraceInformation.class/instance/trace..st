accessing
trace: anObject
	
	trace := anObject.
	self changed: #newTrace with:anObject.
	^ self.