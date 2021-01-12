private - ui
exampleMorphExpanded: aMorph
	
	| lastCollapseMorph |
	lastCollapseMorph := collapsedExamplesMorphSeparator isInWorld 
		ifTrue: [collapsedExamplesMorphSeparator]
		ifFalse: [collapsedExamplesMorph].
	self addMorph: aMorph after: lastCollapseMorph.
	
	self anyExampleMorphsIsCollapsed
		ifTrue: [
			self 
				addMorph: collapsedExamplesMorphSeparator 
				after: collapsedExamplesMorph]
		ifFalse: [
			collapsedExamplesMorph height: 0.
			collapsedExamplesMorphSeparator abandon.].
	self refreshTextComposition