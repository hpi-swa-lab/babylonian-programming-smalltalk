serialization
asPragma
	
	^ '<scriptExampleNamed: ''{1}''{2}{3}{4}>' format: {
		self exampleName .
		' expectedResult: ' , self expectedResult printString.
		self isActive ifFalse: [''] ifTrue: [' active: true'].
		script ifNil: [''] ifNotNil: [' script:' , self scriptString]}