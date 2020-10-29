enumerating
detect: aBlock
	
	self do: [:each | (aBlock value: each) ifTrue: [^ each]].
	self errorNotFound: aBlock