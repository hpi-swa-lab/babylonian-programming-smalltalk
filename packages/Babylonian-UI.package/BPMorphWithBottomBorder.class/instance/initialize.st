as yet unclassified
initialize
	

	super initialize.
	self 
		vResizing: #shrinkWrap;
		hResizing: #shrinkWrap;
		changeTableLayout;
		listDirection: #leftToRight;
		borderWidth: 4;
		color: Color transparent;
		bottomColor: Color transparent