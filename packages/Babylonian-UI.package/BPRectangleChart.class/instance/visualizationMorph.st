visualization
visualizationMorph
	
	^ Morph new
		name: #visualization;
		color: Color blue;
		width: self traceValuesMorph width;
		height: self preferredHeight;
		borderWidth: 0;
		yourself.