utility
newContainerMorph

	^ Morph new
		color: Color transparent;
		vResizing: #shrinkWrap;
		hResizing: #shrinkWrap;
		changeTableLayout;
		listDirection: #leftToRight;
		borderWidth: 0;
		yourself