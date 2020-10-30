example selection
buildExampleListWith: aBuilder
	
	^ aBuilder pluggableListSpec new
		autoDeselect: true;
		clearFilterAutomatically: false;
		filterableList: true;
		
		model: self;
		list: #getExampleListLabels;
		getIndex: #getExampleListIndex;
		setIndex: #setExampleListIndex:;
		
		doubleClick: #exampleListDoubleClick;
		yourself