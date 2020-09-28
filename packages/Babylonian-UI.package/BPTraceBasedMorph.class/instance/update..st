private
update: anAspect
	
	anAspect = #filterContext ifTrue: [
		self updateFrom: displayedTraces]