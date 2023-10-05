initialize-release
deleteLinkedProbes

	| browser |
	browser := BPBrowser open.
	self linkedProbes do: [:aProbe | 
		browser browseReference: aProbe methodReference.
		browser removeAnnotations: {aProbe}].
	
	browser currentWindow delete.