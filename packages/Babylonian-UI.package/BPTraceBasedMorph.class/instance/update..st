change notification
update: anAspect
	
	anAspect = #filterContext ifTrue: [self updateFrom: displayedTraces].
	
	(#(activeExamples tracesChanged) includes: anAspect) ifTrue: [
		Project current addDeferredUIMessage: [self updateTraces]].
	
	
	