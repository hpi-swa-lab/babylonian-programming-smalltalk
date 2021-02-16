as yet unclassified
findClassExampleMethodsFor: aClass
	
	| foundMethods |
	foundMethods := OrderedCollection new.
	aClass class methodDict keysAndValuesDo: [:methodSelector :compiledMethod |
			(methodSelector asString asLowercase includesSubstring: 'example')
				ifTrue: [foundMethods add: aClass name asString -> methodSelector]].
	^ foundMethods