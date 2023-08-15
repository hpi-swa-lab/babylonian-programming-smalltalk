change notifications
update: anAspect with: anObject

	super update: anAspect with: anObject.
	
	anAspect = #newTrace ifTrue: [
		Project current addDeferredUIMessage: [
			anObject first ifNotNil: [
				anObject first addDependent: self.
				self removeAllMorphs.
				self visualize]]].
	
	(anAspect = #exampleCompleted or: [anAspect = #traceChanged]) ifTrue: [
		Project current addDeferredUIMessage: [
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