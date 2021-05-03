enumerating
detect: aBlock after: entry ifFound: foundBlock ifNone: exceptionBlock
	
	self do: [:each | (aBlock value: each) ifTrue: [^ foundBlock value: each]] after: entry.
	exceptionBlock value.