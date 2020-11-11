initialization
initialize
	
	super initialize.
	self height: 1.
	
	self line: (LineMorph from: self topRight to: self center color: Color lightGray width: 1).
	self addMorph: self line.