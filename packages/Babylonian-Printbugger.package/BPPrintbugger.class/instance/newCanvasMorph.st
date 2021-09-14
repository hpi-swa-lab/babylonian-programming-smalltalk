private -ui 
newCanvasMorph
	
	^ Morph new
		name: #canvasMorph;
		color: Color white;
		changeTableLayout;
		listDirection: #leftToRight;
		cellPositioning: #topCenter;
		cellInset: 10@5;
		layoutInset: 5@5;
		hResizing: #shrinkWrap;
		vResizing: #shrinkWrap;
		yourself