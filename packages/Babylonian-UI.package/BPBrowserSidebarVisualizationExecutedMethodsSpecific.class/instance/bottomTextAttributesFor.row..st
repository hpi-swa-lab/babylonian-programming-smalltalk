list bottom
bottomTextAttributesFor: entry row: aNumber
	
	^ (self bottomTextAttributesFor: entry), (additionalBottomTextAttributes at: aNumber ifAbsent: [{}])