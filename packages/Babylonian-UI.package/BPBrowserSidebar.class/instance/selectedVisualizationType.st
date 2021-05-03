visualization type
selectedVisualizationType
	
	^ (self getVisualizationTypes at: visualizationTypeIndex ifAbsent: [#none]) value