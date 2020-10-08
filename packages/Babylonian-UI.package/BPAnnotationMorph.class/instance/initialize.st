initialization
initialize
	
	super initialize.
	self color: (ScrollPane basicNew userInterfaceTheme color ifNil: [Color peach lighter]) slightlyDarker.
	self height: self fontHeight.
	self 
		changeTableLayout;
		cellPositioning: #topLeft;
		listDirection: #leftToRight;
		hResizing: #shrinkWrap;
		vResizing: #shrinkWrap;
		cellInset: 2; 
		layoutInset: 2.