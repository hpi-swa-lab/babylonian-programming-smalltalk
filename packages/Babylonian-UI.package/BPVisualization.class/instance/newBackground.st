private
newBackground
	
	
	^ Morph new
		name: #visualization;
		color: self defaultBackgroundColor;
		width: self traceValuesMorph width;
		height: self class preferredHeight;
		borderWidth: 0;
		yourself