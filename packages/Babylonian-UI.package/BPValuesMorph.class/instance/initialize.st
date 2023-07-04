initialization
initialize

	super initialize.
	
	probeMorph := BPProbeMorph new.
	values := Set new.
	trace := BPTrace new.
	
	self color: Color transparent;
		vResizing: #shrinkWrap;
		hResizing: #spaceFill;
		cellPositioning: #topLeft;
		changeTableLayout;
		listDirection: #leftToRight;
		layoutInset: 1;
		borderWidth: 0.