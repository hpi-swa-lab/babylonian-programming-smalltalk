initialization
initialize
	
	super initialize.
	self color: ((ScrollPane basicNew userInterfaceTheme color ifNil: [
		Color peach lighter]) adjustBrightness: -0.05).
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