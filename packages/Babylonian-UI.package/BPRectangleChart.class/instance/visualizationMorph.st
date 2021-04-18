visualization
visualizationMorph
	
	^ Morph new
		name: #visualization;
		color: Color blue;
		width: self traceValuesMorph width;
		height: self class canvasHeight;
		borderWidth: 0;
		yourself.