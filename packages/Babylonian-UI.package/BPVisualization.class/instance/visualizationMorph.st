visualization
visualizationMorph
	
	
	^ Morph new
		name: #visualization;
		color: self defaultBackgroundColor;
		width: self traceValuesMorph width;
		height: self class preferredHeight;
		borderWidth: 0;
		addMorph: 'Given collection is not supported for visualization as of now' asMorph
		yourself.