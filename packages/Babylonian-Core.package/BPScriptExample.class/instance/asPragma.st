serialization
asPragma
	
	^ '<scriptExampleNamed: ''{1}''{2}{3}{4}{5}{6}>' format: {
		self exampleName .
		self isActive ifFalse: [''] ifTrue: [' active: true'].
		self setUpScript ifNil: [''] ifNotNil: [:setUpScript | ' setUp: ' , setUpScript printString].
		self tearDownScript ifNil: [''] ifNotNil: [:tearDownScript | ' tearDown: ' , tearDownScript printString].
		self expectedResult ifNil: [''] ifNotNil: [:anExpectedResult | ' expectedResult: ' , anExpectedResult printString].
		self script ifNil: [''] ifNotNil: [' script: ' , self scriptString]}
