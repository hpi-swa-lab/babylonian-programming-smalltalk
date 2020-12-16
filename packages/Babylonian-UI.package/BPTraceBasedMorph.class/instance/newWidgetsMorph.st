private - ui
newWidgetsMorph
	
	^ Morph new
		color: Color transparent;
		changeTableLayout;
		listDirection: #topToBottom;
		vResizing: #shrinkWrap;
		hResizing: #spaceFill;
		cellPositioning: #topLeft;
		layoutInset: 1;
		yourself.