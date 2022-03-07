change notifications
update: anAspect with: anObject

	super update: anAspect with: anObject.
	
	anAspect = #newTrace ifTrue: [
		anObject first ifNotNil: [
			self removeAllMorphs.
			self visualize]].
	
	anAspect = #exampleIsActive ifTrue: [
		anObject isActive
			ifTrue: ["do nothing, already handling #newTrace"]
			ifFalse: [self removeAllButFirstSubmorph]]. 
	
	anAspect = #updatedContext ifTrue: [
		(anObject ~~ example) ifTrue: [self updateLayoutToContext]].
	
	anAspect = #toggleAndFlashAnnotation ifTrue: [
		self visualize.
		context annotationIdToFlash: nil].