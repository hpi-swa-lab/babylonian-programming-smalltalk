state
trackAll: aCollectionOfBPExamples
	
	aCollectionOfBPExamples do: [:anExample | self trackWithoutSignal: anExample].
	self changed: #updatedContext.