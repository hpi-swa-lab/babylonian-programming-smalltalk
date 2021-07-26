initialize-release
initialize
	
	super initialize.
	
	self
		searchResults: OrderedCollection new;
		searchResultIndex: 1;
		classNamePreference: true;
		includesMethodSelectorPreference: true;
		packageNamePreference: false;
		tryRecordingPreference: false;
		tryCoveragePreference: false.