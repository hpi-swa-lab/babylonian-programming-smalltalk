visualization
newVisualizationMorph
	
	| visualizationMorph |
	visualizationMorph := self newBackground.
		
	visualizationMorph addAllMorphs: self newDataPoints.
	visualizationMorph addAllMorphsBack: (self newLinesForDatapointsOn: visualizationMorph).
	visualizationMorph addAllMorphsBack: (self newScaleLinesOn: visualizationMorph).
	
	^ visualizationMorph