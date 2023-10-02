change notifications
update: anAspect with: anObject
	
	anAspect = #exampleIsActive ifTrue: [
		^ self changed: #activeExamples].
	
	anAspect = #newTrace ifTrue: [
		^ self changed: #tracesChanged].