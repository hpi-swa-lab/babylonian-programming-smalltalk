initialization
initialize
	
	super initialize.
	
	BPStyler withSideBarAnnotations: [
		self 
			wrapDirection: #leftToRight;
			hResizing: #shrinkWrap;
			vResizing: #shrinkWrap].
	
	self 
		cellPositioning: #leftCenter;
		cellInset: 1.