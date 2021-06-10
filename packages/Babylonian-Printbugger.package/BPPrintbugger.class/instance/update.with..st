change notifications
update: anAspect with: anExample
	
	super update: anAspect with: anExample.
	
	anAspect = #exampleIsActive ifTrue: [self updateFrom: BPExamples value activeExamples]. 