visualization
newLinesForDatapointsOn: visualizationMorph
	
	
	^ visualizationMorph submorphs allButLast collectWithIndex: [:aDataPointMorph :index | 
		self newLineFrom: (visualizationMorph submorphs at: index) firstSubmorph
			to: ((visualizationMorph submorphs at: index + 1) firstSubmorph)]