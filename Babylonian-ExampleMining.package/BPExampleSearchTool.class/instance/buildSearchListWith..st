toolbuilder
buildSearchListWith: aBuilder

	^aBuilder pluggableListSpec new 
		model: self;
		list: #searchResults; 
		getIndex: #searchResultIndex;
		setIndex: #searchResultIndex:;
		yourself