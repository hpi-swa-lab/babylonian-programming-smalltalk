ui - actions
expand
	
	collapsed ifFalse: [^ self].
	
	self
		addMorph: configurationButton
		inFrontOf: self submorphs last.
	self 
		addMorph: exampleSpecificMorphs 
		inFrontOf: self submorphs last.
	self collapseButton labelGraphic: (BPIcons moreVerticalIcon scaledToSize: self iconSize * 0.7).
	collapsed := false.
	
	self flag: #todo. "The following is very brittle --pre"
	self owner owner exampleMorphExpanded: self.

	
	