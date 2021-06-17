initialize-release
initialize
	
	super initialize.
	
	self
		searchResults: OrderedCollection new;
		searchResultIndex: 1;
		classNamePreference: true;
		includesMethodSelectorPreference: true;
		tryRecordingPreference: false;
		tryCoveragePreference: false;
		evalOnlyBase53: false.