serialization
asPragma
	
	^ '<scriptExampleNamed: ''{1}''{2}{3}{4}>' format: {
		self exampleName.
		self setUpScript ifNil: [''] ifNotNil: [:setUpScript | ' setUp: ' , setUpScript printString].
		self tearDownScript ifNil: [''] ifNotNil: [:tearDownScript | ' tearDown: ' , tearDownScript printString].
		script ifNil: [''] ifNotNil: [' script:' , self scriptString]}