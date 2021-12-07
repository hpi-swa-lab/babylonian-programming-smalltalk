private
updateFrom: aCollectionOfExamples

	self cleanCanvas.
		
	aCollectionOfExamples
		ifEmpty: [self addMorph: self newEmptyExamplesNotification]
		ifNotEmpty: [self addAllMorphsBack: (aCollectionOfExamples asOrderedCollection collect: [:aBPExample | BPSwimlane newFor: aBPExample withContext: context] )].