initialization
initialize
	
	super initialize.
	self color: ((ScrollPane basicNew userInterfaceTheme color ifNil: [Color peach lighter]) adjustBrightness: -0.02).
	self height: self fontHeight.
	self 
		changeTableLayout;
		cellPositioning: #topLeft;
		listDirection: #leftToRight;
		hResizing: #rigid;
		width: 370;
		vResizing: #shrinkWrap;
		cellInset: 2; 
		layoutInset: 2.