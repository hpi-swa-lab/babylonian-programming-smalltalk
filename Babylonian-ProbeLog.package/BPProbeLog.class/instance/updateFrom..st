private
updateFrom: aCollectionOfExamples

	self removeAllMorphs.
	context clear.
	
	self addMorph: self newExampleSelectionButtonMorph.
	context trackAll: aCollectionOfExamples.
	aCollectionOfExamples do: [:anExample | self addNewColumnFor: anExample].
									
	