initialize-release
initialize
	
	super initialize.
	
	self
		searchResults: OrderedCollection new;
		searchResultIndex: 1;
		classNamePreference: true.