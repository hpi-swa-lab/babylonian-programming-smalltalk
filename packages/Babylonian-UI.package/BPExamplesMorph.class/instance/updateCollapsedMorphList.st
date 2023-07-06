private - ui
updateCollapsedMorphList
	
	(self anyExampleMorphsIsCollapsed and: [self anyExampleMorphsIsExpanded]) 
		ifTrue: [
			self 
				addMorph: collapsedExamplesMorphSeparator 
				after: collapsedExamplesMorph]
		ifFalse: [
			collapsedExamplesMorphSeparator abandon.
			self anyExampleMorphsIsExpanded ifTrue: ["Only expanded morphs"
				collapsedExamplesMorph height: 0.]]