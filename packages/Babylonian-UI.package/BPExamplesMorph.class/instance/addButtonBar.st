initialization
addButtonBar
	
	buttonBar := Morph new
		color: Color transparent;
		changeTableLayout;
		listDirection: #leftToRight;
		cellInset: 0;
		cellGap: 5;
		layoutInset: 3;
		name: #examplesMorphButtonBar;
		vResizing: #shrinkWrap;
		hResizing: #shrinkWrap;
		yourself.
	self addMorphBack: buttonBar.
	