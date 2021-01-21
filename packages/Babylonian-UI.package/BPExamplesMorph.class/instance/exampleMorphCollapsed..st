private - ui
exampleMorphCollapsed: aMorph
	
	collapsedExamplesMorph addMorphBack: aMorph.
	
	self 
		updateCollapsedMorphList;
		refreshTextComposition