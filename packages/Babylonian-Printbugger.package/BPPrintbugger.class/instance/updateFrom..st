private
updateFrom: aCollectionOfExamples
	
	self cleanCanvas.
	
	aCollectionOfExamples isEmpty
		ifTrue: [canvasMorph addMorph: self newEmptyExamplesNotification]
		ifFalse: [canvasMorph addAllMorphsBack: (aCollectionOfExamples asOrderedCollection collect: [:aBPExample | BPSwimlane newFor: aBPExample] )].