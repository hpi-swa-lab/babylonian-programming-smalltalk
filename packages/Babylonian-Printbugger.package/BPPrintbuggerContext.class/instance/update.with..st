updating
update: anAspect with: anObject
	
	super update: anAspect with: anObject.
	
	anAspect = #newTrace ifTrue: [
		"When a new trace is set, we do not know which values were added/removed so update all trace values."
		anObject ifNotNil: [self untrack: anObject example. self track: anObject example.]].