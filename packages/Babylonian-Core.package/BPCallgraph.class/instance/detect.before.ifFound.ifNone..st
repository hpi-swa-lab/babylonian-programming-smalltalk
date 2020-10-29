enumerating
detect: aBlock before: entry ifFound: foundBlock ifNone: exceptionBlock
	
	self do: [:each | (aBlock value: each) ifTrue: [^ foundBlock value: each]] before: entry.
	exceptionBlock value.