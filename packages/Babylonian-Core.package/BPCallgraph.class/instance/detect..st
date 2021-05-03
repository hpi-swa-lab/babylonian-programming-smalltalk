enumerating
detect: aBlock
	
	^ self detect: aBlock ifFound: [:entry | ^ entry] ifNone: [self errorNotFound: aBlock]