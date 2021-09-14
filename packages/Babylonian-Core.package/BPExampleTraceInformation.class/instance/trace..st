accessing
trace: anObject
	
	|oldTrace|
	oldTrace := trace.
	trace := anObject.
	self changed: #newTrace with: {trace. oldTrace}.
	^ trace