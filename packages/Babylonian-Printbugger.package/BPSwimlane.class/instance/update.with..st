change notifications
update: anAspect with: aTrace
	
	super update: anAspect with:aTrace.
	
	anAspect = #newTrace ifTrue: [
		self removeAllMorphs.
			aTrace ifNotNil: [self visualize]]. 