enumerating
detect: aBlock
	
	^ self detect: aBlock ifFound: [:entry | ^ entry] ifNone: [self error: aBlock asString]