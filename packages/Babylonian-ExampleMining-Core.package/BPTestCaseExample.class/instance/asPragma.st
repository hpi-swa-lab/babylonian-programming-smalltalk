serialization
asPragma
	
	^ '<testCaseExampleNamed: ''{1}''{2}{3}{4}{5}{6}>' format: {
		self exampleName .
		self isActive ifFalse: [''] ifTrue: [' active: true'].
		self setUpScript ifNil: [''] ifNotNil: [:setUpScript | ' setUp: ' , setUpScript printString].
		self tearDownScript ifNil: [''] ifNotNil: [:tearDownScript | ' tearDown: ' , tearDownScript printString].
		self testCaseClass ifNil: [''] ifNotNil: [:testCaseClass | ' testCaseClass: ' , testCaseClass printString asSymbol printString].
		self methodSelector ifNil: [''] ifNotNil: [:methodSelector | ' methodSelector: ', methodSelector printString]}