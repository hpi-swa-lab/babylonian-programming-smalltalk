serialization
asPragma
	
	^ '<scriptExampleNamed: ''{1}''{2}{3}{4}>' format: {
		self exampleName .
		self isActive ifFalse: [''] ifTrue: [' active: true'].
		script ifNil: [''] ifNotNil: [' script:' , self scriptString].
		self expectedResult ifNil: [''] ifNotNil: [:anExpectedResult | ' expectedResult: ' , anExpectedResult printString]}