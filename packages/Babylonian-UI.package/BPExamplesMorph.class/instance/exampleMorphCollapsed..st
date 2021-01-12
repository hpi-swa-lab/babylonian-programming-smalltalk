private - ui
exampleMorphCollapsed: aMorph
	
	collapsedExamplesMorph addMorphBack: aMorph.
	self anyExampleMorphsIsExpanded
		ifFalse: [collapsedExamplesMorphSeparator abandon]
		ifTrue: [
			self 
				addMorph: collapsedExamplesMorphSeparator 
				after: collapsedExamplesMorph].
	self refreshTextComposition.