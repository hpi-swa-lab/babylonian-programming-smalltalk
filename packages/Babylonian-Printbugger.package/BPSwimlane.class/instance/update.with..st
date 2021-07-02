change notifications
update: anAspect with: anObject
	
	super update: anAspect with: anObject.
	
	anAspect = #newTrace ifTrue: [
		anObject first ifNotNil: [
			self removeAllMorphs.
			self visualize]].
	
	anAspect = #updatedContext ifTrue: [
		(anObject ~~ example) ifTrue: [self updateLayoutToContext]].