state
trackAll: aCollectionOfBPExamples
	
	self performTrackingActionRegarding: [aCollectionOfBPExamples do: [:anExample | self trackSilently: anExample]].