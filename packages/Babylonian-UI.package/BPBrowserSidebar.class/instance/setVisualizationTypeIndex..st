visualization type
setVisualizationTypeIndex: aNumber
	
	visualizationTypeIndex := aNumber.
	self 
		changed: #getVisualizationTypeIndex;
		changed: #visualizationMorphs.