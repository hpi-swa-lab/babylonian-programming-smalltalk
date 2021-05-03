initialization
initialize
	

	super initialize.
	self 
		vResizing: #shrinkWrap;
		hResizing: #shrinkWrap;
		changeTableLayout;
		listDirection: #leftToRight;
		borderWidth: 0;
		color: Color transparent;
		bottomColor: Color transparent