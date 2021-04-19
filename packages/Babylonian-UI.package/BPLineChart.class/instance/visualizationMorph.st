visualization
visualizationMorph
	
	
	| visualizationMorph filteredValueMorphs |
	visualizationMorph := self newBackground.
		
	filteredValueMorphs := self traceValuesMorph submorphs reject: [ :aTraceMorph | 
		self class traceValuesMorphClassesToFilterOut anySatisfy: [:aFilterClass | aTraceMorph isKindOf: aFilterClass]].
	visualizationMorph addAllMorphs: (self newDataPoints: filteredValueMorphs).
	visualizationMorph addAllMorphsBack: (self newLinesForDatapointsOn: visualizationMorph).
	visualizationMorph addAllMorphsBack: (self newScaleLinesOn: visualizationMorph).
	
	^ visualizationMorph