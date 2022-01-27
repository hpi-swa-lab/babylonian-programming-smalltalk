private
updateFrom: aCollectionOfExamples

	self removeAllMorphs.
	
	self examples do: [:anOldExample | self removeExample: anOldExample].
	self addExample: BPNilExample new.
	aCollectionOfExamples do: [:aNewExample | self addExample: aNewExample].
	
	self addAllMorphsBack: (self examples collect: [:aBPExample | self newColumnFor: aBPExample]).
									
	