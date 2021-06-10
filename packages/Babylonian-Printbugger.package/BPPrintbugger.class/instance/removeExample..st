private
removeExample: anExample
	
	canvasMorph removeMorph: (canvasMorph submorphNamed: anExample uniqueIdentifier 
		ifNone: [Exception signal: 'Attempted to remove non-existing swimlane for example.']).
	
	BPExamples value activeExamples ifEmpty: [canvasMorph addMorph: self newEmptyExamplesNotification].