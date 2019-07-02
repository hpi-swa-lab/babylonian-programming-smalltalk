initialization
initialize

	super initialize.
	self color: Color palePeach.
	self 
		changeTableLayout;
		cellPositioning: #topLeft;
		listDirection: #topToBottom;
		hResizing: #shrinkWrap;
		vResizing: #shrinkWrap;
		layoutInset: 7.