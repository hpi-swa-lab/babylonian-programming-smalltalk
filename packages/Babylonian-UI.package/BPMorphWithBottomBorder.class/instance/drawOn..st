drawing
drawOn: aCanvas
	
	aCanvas 
		line: self innerBounds bottomLeft 
		to: self innerBounds bottomRight 
		width: 2 color: bottomColor.
	super drawOn: aCanvas