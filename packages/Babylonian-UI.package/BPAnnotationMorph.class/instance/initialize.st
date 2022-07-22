initialization
initialize

	super initialize.
	self color: self defaultColor.
	self height: self fontHeight.
	
	self 
		changeTableLayout;
		cellPositioning: #topLeft;
		listDirection: #leftToRight;
		vResizing: #shrinkWrap;
		cellInset: 1; 
		layoutInset: 1.
		
	BPStyler 
		withSidebarAnnotations: [
			self 
				hResizing: #rigid;
				width: 370] 
		without: [
			self hResizing: #shrinkWrap].