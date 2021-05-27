visualization
visualizationMorph
	
	
	^ Morph new
		name: #visualization;
		color: self defaultBackgroundColor;
		height: self class preferredHeight;
		addMorph: 'Given collection is not supported for visualization as of now' asMorph
		yourself.