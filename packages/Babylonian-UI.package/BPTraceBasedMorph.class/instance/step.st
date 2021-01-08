stepping and presenter
step
	
	| newTraces priorEditor tracesChanged |
	self methodReference ifNil: [^ false].
	newTraces := self getTraces asIdentitySet.
	tracesChanged := newTraces ~= displayedTraces.
	
	(allTracesCompleted not or: [newTraces ~= displayedTraces]) ifTrue: [
		allTracesCompleted := newTraces 
			ifEmpty: [true] 
			ifNotEmpty: [:ts | ts allSatisfy: [:t | t hasTraceCompleted]].
		self updateFrom: (newTraces ifEmpty: [self emptyTraces]).
		displayedTraces := newTraces].

	tracesChanged ifTrue: [
		Project current addDeferredUIMessage: [
			priorEditor := self owner editor.
			self owner releaseParagraph.
			self owner installEditorToReplace: priorEditor]].