*Babylonian-Core
exampleInstanceMethods
	
	| result |
	result := OrderedCollection new.
	self theMetaClass methodsDo: [:m |
		m isExampleInstanceMethod ifTrue: [result add: m]].
	^ result