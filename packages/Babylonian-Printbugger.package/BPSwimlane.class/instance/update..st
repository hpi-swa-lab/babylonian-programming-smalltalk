change notifications
update: anAspect
	
	super update: anAspect.
	
	anAspect = #updatedContext ifTrue: [self updateLayoutToContext].