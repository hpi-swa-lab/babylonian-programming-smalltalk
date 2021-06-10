private
removeExample: aBPExample
	
	canvasMorph removeMorph: (canvasMorph submorphNamed: aBPExample uniqueIdentifier 
		ifNone: ["don't care"]).
	
	context untrack: aBPExample.
	BPExamples value activeExamples ifEmpty: [canvasMorph addMorph: self newEmptyExamplesNotification].