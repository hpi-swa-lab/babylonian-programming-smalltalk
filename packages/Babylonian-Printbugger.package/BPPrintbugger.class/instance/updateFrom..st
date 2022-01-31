private
updateFrom: aCollectionOfExamples

	self removeAllMorphs.
	
	self examples do: [:anOldExample | self removeExample: anOldExample].
	({BPNilExample new}, aCollectionOfExamples asOrderedCollection)
		do: [:anExample | self addExample: anExample.
						    self addMorphFront: (self newColumnFor: anExample)].
									
	