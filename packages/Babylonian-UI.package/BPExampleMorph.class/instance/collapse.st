ui - actions
collapse
	
	collapsed ifTrue: [^ self].
	
	exampleSpecificMorphs abandon.
	self collapseButton labelGraphic: (BPIcons moreVerticalIcon scaledToSize: self iconSize * 0.7).
	
	collapsed := true.
	