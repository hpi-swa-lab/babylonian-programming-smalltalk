change notifications
update: anAspect with: anObject
	
	super update: anAspect with: anObject.
	
	anAspect = #newTrace ifTrue: [
		self removeAllMorphs.
		anObject ifNotNil: [self visualize]].