private - ui
newTracesMorph
	
	^ Morph new
		color: Color transparent;
		changeTableLayout;
		listDirection: #topToBottom;
		vResizing: #shrinkWrap;
		hResizing: #shrinkWrap;
		cellPositioning: #topLeft;
		layoutInset: 1;
		yourself