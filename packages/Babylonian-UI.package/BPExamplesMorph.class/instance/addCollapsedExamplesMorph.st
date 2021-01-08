initialization
addCollapsedExamplesMorph
	
	collapsedExamplesMorph := self newContainerMorph
		listDirection: #leftToRight;
		wrapDirection: #topToBottom;
		cellInset: 0;
		name: #collapsedExamplesMorph;
		height: 0;
		hResizing: #spaceFill;
		yourself.
	self addMorphFront: collapsedExamplesMorph.
	