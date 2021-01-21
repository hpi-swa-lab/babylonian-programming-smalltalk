private - ui
exampleMorphExpanded: aMorph
	
	| lastCollapseMorph |
	lastCollapseMorph := collapsedExamplesMorphSeparator isInWorld 
		ifTrue: [collapsedExamplesMorphSeparator]
		ifFalse: [collapsedExamplesMorph].
	self addMorph: aMorph after: lastCollapseMorph.
	self rememberThat: aMorph hasACollapsedStateOf: false.
	
	self 
		updateCollapsedMorphList;
		refreshTextComposition