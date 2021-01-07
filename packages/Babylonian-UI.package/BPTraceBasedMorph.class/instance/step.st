stepping and presenter
step
	
	| newTraces |
	self methodReference ifNil: [^ false].
	newTraces := self getTraces asIdentitySet.
	
	(allTracesCompleted not or: [newTraces ~= displayedTraces]) ifTrue: [
		allTracesCompleted := newTraces 
			ifEmpty: [true] 
			ifNotEmpty: [:ts | ts allSatisfy: [:t | t hasTraceCompleted]].
		newTraces notEmpty 
			ifTrue: [	self updateFrom: newTraces] 
			ifFalse: [self updateFrom: self emptyTraces].
		displayedTraces := newTraces].