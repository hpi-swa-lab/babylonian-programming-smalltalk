initialization
initializeProperties

	^ self 
		color: Color transparent;
		changeTableLayout;
		listDirection: #leftToRight;
		cellPositioning: #center;
		vResizing: #shrinkWrap;
		hResizing: #shrinkWrap;
		cellInset: 2@0.