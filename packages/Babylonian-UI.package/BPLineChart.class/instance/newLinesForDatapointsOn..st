visualization
newLinesForDatapointsOn: visualizationMorph
	
	
	^ visualizationMorph submorphs overlappingPairsCollect: [:oneDataPointMorph :anotherDataPointMorph | 
		self 
			newLineFrom: oneDataPointMorph firstSubmorph
			to: anotherDataPointMorph firstSubmorph]