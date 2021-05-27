visualization
visualizationMorph
	
	
	| visualizationMorph |
	visualizationMorph := self newBackground.
	visualizationMorph addAllMorphs: self newCoordinateSystems.
	visualizationMorph addAllMorphs: self newRectangles.
	
	^ visualizationMorph