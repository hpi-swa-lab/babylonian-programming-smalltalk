change notifications
update: anAspect with: anObject
	
	super update: anAspect with: anObject.
	
	anAspect = #newTrace ifTrue: [
		anObject ifNotNil: [
			self removeAllMorphs.
			self visualize]].