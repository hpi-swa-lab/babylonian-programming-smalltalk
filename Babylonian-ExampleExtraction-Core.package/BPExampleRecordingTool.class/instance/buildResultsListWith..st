as yet unclassified
buildResultsListWith: aBuilder

	| listSpec |
	listSpec := aBuilder pluggableListSpec new.
	listSpec 
		model: self;
		list: #resultsList; 
		getIndex: #resultsListIndex; 
		setIndex: #resultsListIndex:"; 
		menu: #packageMenu:; 
		keyPress: #packageListKey:from:".
	^listSpec