record mock
blacklistInstVar: aNumber for: anObject
	
	objectTemplateMapping
		at: anObject
		ifPresent: [:template | template blacklistInstVarNumber: aNumber].