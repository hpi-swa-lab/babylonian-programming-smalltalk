stepping and presenter
step
	
	| newTraces tracesChanged |
	self methodReference ifNil: [^ false].
	self resetHeight.
	
	newTraces := self getTraces asIdentitySet.
	tracesChanged := newTraces ~= displayedTraces.
	
	(allTracesCompleted not or: [tracesChanged]) ifTrue: [
		allTracesCompleted := newTraces 
			ifEmpty: [true] 
			ifNotEmpty: [:ts | ts allSatisfy: [:t | t hasTraceCompleted]].
		self updateFrom: (newTraces ifEmpty: [self emptyTraces]).
		displayedTraces := newTraces].

	tracesChanged ifTrue: [self refreshTextComposition].