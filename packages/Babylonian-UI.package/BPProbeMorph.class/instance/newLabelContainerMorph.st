private - ui
newLabelContainerMorph
	
	^ self newContainerMorph
		changeTableLayout;
		hResizing: #spaceFill;
		cellPositioning: #topLeft;
		layoutInset: 1;
		yourself.
		