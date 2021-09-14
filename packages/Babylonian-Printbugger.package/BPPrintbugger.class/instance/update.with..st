change notifications
update: anAspect with: anExample
	
	super update: anAspect with: anExample.
	
	anAspect = #exampleIsActive ifTrue: [
		anExample isActive
			ifTrue: [self addExample: anExample]
			ifFalse: [self removeExample: anExample]]. 