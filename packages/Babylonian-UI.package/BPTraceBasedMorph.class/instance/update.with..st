change notification
update: anAspect with: anObject
	
	anAspect = #traceChanged ifTrue: [
		Project current addDeferredUIMessage: [
			self updateFrom: displayedTraces]].
	
	
	