searching
search
	
	self searchResults: self findTests.
	self searchResults ifEmpty: [UIManager default inform: 'Nothing was found']. 