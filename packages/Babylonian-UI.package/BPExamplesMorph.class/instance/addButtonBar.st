initialization
addButtonBar
	
	buttonBar := Morph new
		color: Color transparent;
		changeTableLayout;
		listDirection: #leftToRight;
		cellInset: 0;
		name: #examplesMorphButtonBar;
		vResizing: #shrinkWrap;
		hResizing: #shrinkWrap;
		yourself.
	self addMorphBack: buttonBar
	