initialization
initialize

	super initialize.
	
	self 
		color: Color transparent;
		changeTableLayout;
		listDirection: #leftToRight;
		hResizing: #shrinkWrap;
		vResizing: #shrinkWrap;
		layoutInset: 3.
	
	self 
		addSelectButtonMorph;
		addLabelMorph