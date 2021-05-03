enumerating
detect: aBlock ifFound: foundBlock ifNone: exceptionBlock
	
	self do: [:each | (aBlock value: each) ifTrue: [^ foundBlock value: each]].
	^ exceptionBlock value