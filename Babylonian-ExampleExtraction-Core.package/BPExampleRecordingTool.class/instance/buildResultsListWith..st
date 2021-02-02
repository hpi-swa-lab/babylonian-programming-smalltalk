toolbuilder
buildResultsListWith: aBuilder
	
	| listSpec |
	listSpec := aBuilder pluggableListSpec new.
	listSpec 
		model: self;
		list: #recordings; 
		getIndex: #selectedRecordingIndex;
		setIndex: #selectedRecordingIndex:.
	^listSpec