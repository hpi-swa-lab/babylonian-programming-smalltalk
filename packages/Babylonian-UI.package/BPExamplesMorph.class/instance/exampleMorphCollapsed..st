private - ui
exampleMorphCollapsed: aMorph
	
	collapsedExamplesMorph addMorphBack: aMorph.
	self rememberThat: aMorph hasACollapsedStateOf: true.
	
	self 
		updateCollapsedMorphList;
		refreshTextComposition