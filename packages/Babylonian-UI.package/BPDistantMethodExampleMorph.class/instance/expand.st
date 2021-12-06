ui - actions
expand

	collapsed ifFalse: [^ self].
	
	self
		addMorph: configurationButton
		inFrontOf: self submorphs last.
	self 
		addMorph: exampleSpecificMorphs 
		inFrontOf: self submorphs last.
	nameTextMorph wrapFlag: true.
	self collapseButton labelGraphic: (BPIcons moreHorizontalIcon scaledToSize: self iconSize * 0.7).
	collapsed := false.