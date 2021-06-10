creation
visualize
	
	self name: example uniqueIdentifier asSymbol;
		addMorph: (self newTitleMorphFor: example);
		addAllMorphs: (self visualizeLinesFor: example).
	