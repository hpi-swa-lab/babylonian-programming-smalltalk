initialization
initialize
	
	super initialize.
	
	collapsed := false.
	
	BPStyler withSidebarAnnotations: [
		self 
			wrapDirection: #leftToRight;
			hResizing: #spaceFill;
			vResizing: #shrinkWrap].
	
	self 
		cellPositioning: #leftCenter;
		cellInset: 0;
		cellGap: ((0.7 * self fontWidth) rounded max: 2);
		layoutInset: 20@2;
		hResizing: #spaceFill.