private - ui
newContainerMorph
	
	^ super newContainerMorph
		changeTableLayout;
		hResizing: #spaceFill;
		cellPositioning: #topLeft;
		layoutInset: 1;
		yourself.
		