private -ui 
newCanvasMorph
	
	^ Morph new
		name: #canvasMorph;
		color: Color white;
		changeTableLayout;
		listDirection: #leftToRight;
		cellPositioning: #topCenter;
		cellInset: 20@5;
		layoutInset: 20@10;
		hResizing: #shrinkWrap;
		vResizing: #shrinkWrap;
		yourself