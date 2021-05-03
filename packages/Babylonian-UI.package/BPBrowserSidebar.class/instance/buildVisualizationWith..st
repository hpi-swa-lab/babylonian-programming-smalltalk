visualization
buildVisualizationWith: aBuilder
	
	^ aBuilder pluggablePanelSpec new
		model: self;
		children: #visualizationMorphs;
		yourself