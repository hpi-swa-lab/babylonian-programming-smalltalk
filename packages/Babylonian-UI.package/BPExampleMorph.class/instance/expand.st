ui - actions
expand
	
	collapsed ifFalse: [^ self].
	
	self 
		addMorph: exampleSpecificMorphs 
		inFrontOf: self submorphs last.
	self collapseButton labelGraphic: (BPIcons moreVerticalIcon scaledToSize: self iconSize * 0.7).
		
	collapsed := false.
	