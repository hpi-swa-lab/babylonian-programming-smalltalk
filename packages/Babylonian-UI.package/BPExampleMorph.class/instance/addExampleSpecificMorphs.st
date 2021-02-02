private - ui
addExampleSpecificMorphs
	
	exampleSpecificMorphs := self newContainerMorph.
	exampleSpecificMorphs
		hResizing: #spaceFill;
		listDirection: #leftToRight;
		wrapDirection: #topToBottom. 
	self addMorphBack: exampleSpecificMorphs.