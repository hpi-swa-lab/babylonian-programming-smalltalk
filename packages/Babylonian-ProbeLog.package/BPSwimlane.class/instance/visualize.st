creation
visualize

	self submorphsDo: [:aSubmorph | aSubmorph abandon].
	
	self name: example uniqueIdentifier asSymbol;
		addMorph: (self newTitleMorphFor: example).
	
	example isActive ifTrue: [self addMorphBack: (self visualizeLinesFor: example)].
	