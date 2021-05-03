enumerating
detect: aBlock before: entry
	
	self 
		detect: aBlock 
		before: entry 
		ifFound: [:each | ^ each]
		ifNone: [self errorNotFound: aBlock]