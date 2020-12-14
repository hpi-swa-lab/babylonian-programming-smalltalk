building
buildTestNameForClass: aClass

	| coreName number |
	
	coreName := 'test', self serializedTestName.
	^ (self methodNotExistsOrCanBeOverritten: coreName inClass: aClass)
		ifTrue: [coreName]
		ifFalse: [
			number := 0.
			[number := number + 1] doWhileFalse: [self methodNotExistsOrCanBeOverritten: coreName, number asString inClass: aClass].
			coreName, number
		]