initialization
initialize
	
	super initialize.
	
	collapsed := false.
	
	BPStyler withSidebarAnnotations: [
		self 
			wrapDirection: #leftToRight;
			hResizing: #shrinkWrap;
			vResizing: #shrinkWrap].
	
	self 
		cellPositioning: #leftCenter;
		cellInset: 0.