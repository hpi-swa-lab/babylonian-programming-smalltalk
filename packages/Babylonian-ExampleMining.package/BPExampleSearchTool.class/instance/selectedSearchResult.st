accessing
selectedSearchResult

	^ self searchResults at: self searchResultIndex ifAbsent: [^ nil]