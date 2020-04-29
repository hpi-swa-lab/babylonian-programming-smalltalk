initialization
initialize

	super initialize.
	self color: Color palePeach slightlyLighter.
	self height: self fontHeight.
	self 
		changeTableLayout;
		cellPositioning: #topLeft;
		listDirection: #leftToRight;
		hResizing: #shrinkWrap;
		vResizing: #shrinkWrap;
		layoutInset: 3.