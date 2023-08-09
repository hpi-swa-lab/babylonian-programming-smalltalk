private - ui
addExampleSpecificMorphs

	exampleSpecificMorphs := self newContainerMorph.
	exampleSpecificMorphs
		hResizing: #spaceFill;
		listDirection: #topToBottom;
		cellPositioning: #topLeft;
		cellGap: ((self fontHeight * 0.2) rounded max: 2).
	self addMorphBack: exampleSpecificMorphs.