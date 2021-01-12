initialization
addCollapsedExamplesMorph
	
	collapsedExamplesMorph := self newContainerMorph
		listDirection: #leftToRight;
		wrapDirection: #topToBottom;
		cellInset: 0;
		name: #collapsedExamplesMorph;
		height: 0;
		cellGap: 2;
		hResizing: #spaceFill;
		yourself.
	self addMorphFront: collapsedExamplesMorph.
	collapsedExamplesMorphSeparator := Morph new
		height: 1;
		color: Color lightGray;
		hResizing: #spaceFill;
		yourself.
	
	