ui - actions
expand

	collapsed ifFalse: [^ self].
	
	self 
		addMorph: exampleSpecificMorphs 
		inFrontOf: self submorphs last.
	nameTextMorph wrapFlag: true.
	collapseButton labelGraphic: (BPIcons chevronUpIcon scaledToSize: self iconSize).
	collapsed := false.
	
	self expandInExamplesMorph.
	
	