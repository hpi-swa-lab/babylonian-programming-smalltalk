enumerating
detect: aBlock after: entry
	
	self 
		detect: aBlock 
		after: entry 
		ifFound: [:each | ^ each]
		ifNone: [self errorNotFound: aBlock]