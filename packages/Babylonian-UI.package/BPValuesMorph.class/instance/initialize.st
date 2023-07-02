initialization
initialize

	super initialize.
	
	probeMorph := BPProbeMorph new.
	values := Set new.
	trace := BPTrace new.
	
	self color: Color transparent;
		vResizing: #shrinkWrap;
		hResizing: #shrinkWrap;
		changeTableLayout;
		listDirection: #leftToRight;
		borderWidth: 0.