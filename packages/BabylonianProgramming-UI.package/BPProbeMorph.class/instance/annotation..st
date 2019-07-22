accessing
annotation: anObject
	
	| result |
	result := super annotation: anObject.
	self updateFrom: self emptyTraces.
	^ result
	