visualization type
buildVisualizationTypeWith: aBuilder
	
	^ aBuilder pluggableListSpec new
		autoDeselect: true;
		clearFilterAutomatically: false;
		filterableList: true;
		
		model: self;
		list: #getVisualizationTypeLabels;
		getIndex: #getVisualizationTypeIndex;
		setIndex: #setVisualizationTypeIndex:;
		yourself