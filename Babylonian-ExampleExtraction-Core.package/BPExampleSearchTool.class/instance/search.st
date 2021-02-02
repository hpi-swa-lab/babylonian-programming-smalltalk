examples
search
	
	self searchResults: (self findTestsFor: self method).
	self searchResults ifEmpty: [UIManager default inform: 'Nothing was found']. 