visualization type
setVisualizationTypeIndex: aNumber
	
	visualizationTypeIndex := aNumber.
	self changed: #getVisualizationTypeIndex.
	self changed: #visualizationMorphs