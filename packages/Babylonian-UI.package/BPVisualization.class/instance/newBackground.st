private
newBackground
	
	
	^ Morph new
		name: #visualization;
		color: self defaultBackgroundColor;
		width: (self traceValues size + 2 "to have some margin") * self spaceBetweenPoints;
		height: self class preferredHeight;
		borderWidth: 0;
		yourself