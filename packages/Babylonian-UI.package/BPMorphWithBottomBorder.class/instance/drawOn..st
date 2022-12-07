drawing
drawOn: aCanvas
	
	aCanvas 
		line: self innerBounds bottomLeft 
		to: self innerBounds bottomRight 
		width: 4 color: bottomColor.
	super drawOn: aCanvas