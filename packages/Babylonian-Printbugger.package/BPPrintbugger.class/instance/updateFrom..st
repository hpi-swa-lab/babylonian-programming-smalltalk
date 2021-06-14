private
updateFrom: aCollectionOfExamples
	
	self cleanCanvas.
	
	aCollectionOfExamples
		ifEmpty: [canvasMorph addMorph: self newEmptyExamplesNotification]
		ifNotEmpty: [canvasMorph addAllMorphsBack: (aCollectionOfExamples asOrderedCollection collect: [:aBPExample | BPSwimlane newFor: aBPExample withContext: context] )].