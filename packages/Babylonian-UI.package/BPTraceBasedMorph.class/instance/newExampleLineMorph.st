private - ui
newExampleLineMorph
	
	^  Morph new 
		color: Color transparent;
		changeTableLayout;
		layoutInset: 0;
		listDirection: #leftToRight;
		vResizing: #shrinkWrap;
		hResizing: #spaceFill;
		cellPositioning: #leftCenter;
		cellGap: 1;
		name: 'example line';
		yourself