stepping and presenter
step
	
	| newTraces |
	self methodReference ifNil: [^ false].
	newTraces := self getTraces.
	newTraces ~= displayedTraces ifTrue: [
		(newTraces notNil and: [newTraces notEmpty])  
			ifTrue: [	self updateFrom: newTraces]
			ifFalse: [self updateFrom: self emptyTraces].
		displayedTraces := newTraces]