serialization
asPragma
	
	^ '<', 'recordedExampleNamed:' ,' ''{1}''{2}{3}>' format: {
		self exampleName.
		self isActive ifFalse: [''] ifTrue: [' active: true'].
		self specimen ifNil: [''] ifNotNil: [' specimenID:' , self specimen printString]}