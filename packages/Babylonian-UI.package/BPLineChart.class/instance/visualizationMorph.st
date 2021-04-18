visualization
visualizationMorph
	
	
	| visualizationMorph stringFilteredValueMorphs |
	visualizationMorph := self newBackground.
		
	stringFilteredValueMorphs := self traceValuesMorph submorphs reject: [ :aTraceMorph | aTraceMorph isKindOf: StringMorph].
	visualizationMorph addAllMorphs: (self newDataPoints: stringFilteredValueMorphs).
	visualizationMorph addAllMorphsBack: (self newLinesForDatapointsOn: visualizationMorph).
	visualizationMorph addAllMorphsBack: (self newScaleLinesOn: visualizationMorph).
	
	^ visualizationMorph