example finding
findClassExampleMethodsFor: aClass
	
	|foundTests |
	foundTests := OrderedCollection new.
	aClass class methodDict keysAndValuesDo: [:methodSelector :compiledMethod |
			(methodSelector asString asLowercase includesSubstring: 'example')
				ifTrue: [foundTests add: aClass name asString -> methodSelector]].
	^ foundTests