accessing
trace: anObject
	
	trace := anObject.
	self changed: #newTrace.
	^ self.