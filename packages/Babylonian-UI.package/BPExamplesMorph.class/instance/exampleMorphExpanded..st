private - ui
exampleMorphExpanded: aMorph
	
	self addMorph: aMorph after: collapsedExamplesMorph.
	collapsedExamplesMorph submorphs ifEmpty: [collapsedExamplesMorph height: 0].
	self refreshTextComposition