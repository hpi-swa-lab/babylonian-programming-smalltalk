updating
update: anAspect with: anObject
	
	super update: anAspect with: anObject.
	
	anAspect = #newTrace ifTrue: [
		"When a new trace is set, we do not know which values were added/removed so update all trace values. Only send an update on final state."
		anObject ifNotNil: [self untrackSilently: anObject example. self track: anObject example.]].