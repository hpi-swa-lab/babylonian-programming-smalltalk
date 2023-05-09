updating
update: anAspect

	super update: anAspect.
	
	anAspect = #bpExamples ifTrue: [ 
		(BPExamples value examples contains: [:anExistingExample | 
			anExistingExample uniqueIdentifier = self example uniqueIdentifier]) ifFalse: [self abandon]]