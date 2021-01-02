initialization
initialize
	
	| lineColor |
	super initialize.
	self 
		height: 1;
		width: 10;
		color: Color transparent.
	
	lineColor := Color veryLightGray adjustBrightness: 0.15.
	self line: (LineMorph from: self topRight to: self center color: lineColor width: 1).
	self addMorph: self line.