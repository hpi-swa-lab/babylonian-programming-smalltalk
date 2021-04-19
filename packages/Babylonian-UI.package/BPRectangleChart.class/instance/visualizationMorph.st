visualization
visualizationMorph
	
	
	| visualizationMorph filteredValueMorphs |
	visualizationMorph := self newBackground.
		
	filteredValueMorphs := self traceValuesMorph submorphs reject: [ :aTraceMorph | 
		self class traceValuesMorphClassesToFilterOut anySatisfy: [:aFilterClass | aTraceMorph isKindOf: aFilterClass]].
	visualizationMorph addAllMorphs: (self newCoordinateSystems: filteredValueMorphs).
	visualizationMorph addAllMorphsFront: (self newRectangles: filteredValueMorphs).
	
	^ visualizationMorph