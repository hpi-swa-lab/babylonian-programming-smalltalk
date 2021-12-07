private
removeExample: aBPExample

	self removeMorph: (self submorphNamed: aBPExample uniqueIdentifier
		ifNone: ["don't care"]).
	
	context untrack: aBPExample.
	BPExamples value activeExamples ifEmpty: [self addMorph: self newEmptyExamplesNotification].