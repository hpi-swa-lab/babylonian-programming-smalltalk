state
untrackAll: aCollectionOfBPExamples
	
	aCollectionOfBPExamples do: [:anExample | self untrackWithoutSignal: anExample].
	self changed: #updatedContext.