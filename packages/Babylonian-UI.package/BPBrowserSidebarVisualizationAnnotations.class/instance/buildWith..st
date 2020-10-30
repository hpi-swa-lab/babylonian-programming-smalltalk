toolbuilder
buildWith: aBuilder
	
	| model |
	model := BPCallgraphModel new.
	model callgraph: self callgraph.
	^ aBuilder build: (aBuilder pluggableListSpec new
		frame: (0@0 corner: 1@1);
		autoDeselect: false;
		clearFilterAutomatically: false;
		filterableList: true;
		model: self;
		list: #getList;
		icon: #getListIcon:;
		doubleClick: #doubleClick;
		getIndex: #getIndex;
		setIndex: #setIndex:;
		"keyPress: #annotationKeyPressed:;"
		yourself)