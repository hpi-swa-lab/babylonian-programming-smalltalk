ui - actions
collapse

	collapsed ifTrue: [^ self].
	
	exampleSpecificMorphs abandon.
	nameTextMorph 
		wrapFlag: false;
		hideScrollBarsIndefinitely.
	collapseButton labelGraphic: (BPIcons chevronDownIcon scaledToSize: self iconSize).
	collapsed := true.

	self collapseInExamplesMorph.
	
	
	