enumerating
detect: aBlock closestBefore: entry ifFound: foundBlock ifNone: exceptionBlock
	
	self do: [:each | (aBlock value: each) ifTrue: [^ foundBlock value: each]] closestBefore: entry.
	exceptionBlock value.