initialization
initialize
	
	super initialize.
	
	BPStyler withSidebarAnnotations: [
		self 
			wrapDirection: #leftToRight;
			hResizing: #shrinkWrap;
			vResizing: #shrinkWrap].
	
	self 
		cellPositioning: #leftCenter;
		cellInset: 0.