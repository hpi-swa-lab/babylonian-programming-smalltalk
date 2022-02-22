ui - actions
collapse

	collapsed ifTrue: [^ self].
	
	exampleSpecificMorphs abandon.
	nameTextMorph 
		wrapFlag: false;
		hideScrollBarsIndefinitely.
	self collapseButton labelGraphic: (BPIcons chevronDownIcon scaledToSize: self iconSize).
	collapsed := true.

	self collapseInExamplesMorph.
	
	
	