building
buildTestNameForClass: aClass
	
	| coreName |
	
	coreName := 'test', self serializedTestName.
	^ (self canBeCreated: coreName in: aClass)
		ifTrue: [coreName]
		ifFalse: [coreName, self smallestAvailableIdFor: coreName in: aClass]