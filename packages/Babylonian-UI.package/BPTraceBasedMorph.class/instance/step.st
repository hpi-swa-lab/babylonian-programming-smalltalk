stepping and presenter
step
	
	| newTraces |
	self methodReference ifNil: [^ false].
	newTraces := self getTraces asIdentitySet.
	
	(allTracesCompleted not or: [newTraces ~= displayedTraces]) ifTrue: [
		allTracesCompleted := newTraces 
		ifEmpty: [false] 
		ifNotEmpty: [:traces | traces allSatisfy: [:aTrace | aTrace hasTraceCompleted]].
		(newTraces notNil and: [newTraces notEmpty])  
			ifTrue: [	self updateFrom: newTraces] 
			ifFalse: [self updateFrom: self emptyTraces].
		displayedTraces := newTraces].
	
	self owner owner changed.