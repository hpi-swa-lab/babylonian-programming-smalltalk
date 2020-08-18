stepping and presenter
step
	
	| newTraces allCompleted |
	self methodReference ifNil: [^ false].
	newTraces := self getTraces.
	
	allCompleted := false.
	(allCompleted not or: [newTraces ~= displayedTraces]) ifTrue: [
		allCompleted := newTraces allSatisfy: [:t | t hasTraceCompleted].
		(newTraces notNil and: [newTraces notEmpty])  
			ifTrue: [	self updateFrom: newTraces]
			ifFalse: [self updateFrom: self emptyTraces].
		displayedTraces := newTraces]