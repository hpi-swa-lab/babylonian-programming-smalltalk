visualization
axisYNotationMorph
	
	
	| minMorph midMorph maxMorph |
	minMorph := (TextMorph string: (self scaleY domain min printString) size: self fontHeight)
		y: self class canvasHeight - self class heightMargin;
		yourself.
		
	midMorph := (TextMorph string: ((self scaleY domain at: (self scaleY domain extent / 2)) printString) size: self fontHeight)
		y: self class canvasHeight / 2 - self class heightMargin;
		yourself.
		
	maxMorph := (TextMorph string: (self scaleY domain max printString) size: self fontHeight)
		y: 0 - self class heightMargin;
		yourself.
	
 	^ Morph new
		color: Color transparent; 
		name: #axisYNotation;
		vResizing: #shrinkWrap;
		hResizing: #shrinkWrap;
		addAllMorphs: {minMorph. midMorph. maxMorph.};
		yourself