private - ui
newWidgetsMorph
	
	^ Morph new
		color: Color transparent;
		changeTableLayout;
		listDirection: #topToBottom;
		vResizing: #shrinkWrap;
		hResizing: #shrinkWrap;
		cellPositioning: #topLeft;
		layoutInset: 1;
		yourself.