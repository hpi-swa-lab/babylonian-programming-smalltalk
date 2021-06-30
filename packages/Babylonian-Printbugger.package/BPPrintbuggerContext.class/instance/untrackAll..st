state
untrackAll: aCollectionOfBPExamples
	
	self performTrackingActionRegarding: [aCollectionOfBPExamples do: [:anExample | self untrackSilently: anExample]].