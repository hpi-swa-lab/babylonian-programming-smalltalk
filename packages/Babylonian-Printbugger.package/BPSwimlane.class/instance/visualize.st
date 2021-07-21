creation
visualize
	
	self name: example uniqueIdentifier asSymbol;
		addMorph: (self newTitleMorphFor: example);
		addMorphBack: (self visualizeLinesFor: example).
	