private - ui
newContainerMorph
	
	^ Morph new
		color: Color transparent;
		changeTableLayout;
		listDirection: #topToBottom;
		vResizing: #shrinkWrap;
		hResizing: #spaceFill;
		cellPositioning: #topLeft;
		borderWidth: 0;
		layoutInset: 1;
		yourself