toolbuilder
buildResultsListWith: aBuilder

	^ aBuilder pluggableListSpec new 
		model: self;
		list: #recordings; 
		getIndex: #selectedRecordingIndex;
		setIndex: #selectedRecordingIndex:;
		yourself