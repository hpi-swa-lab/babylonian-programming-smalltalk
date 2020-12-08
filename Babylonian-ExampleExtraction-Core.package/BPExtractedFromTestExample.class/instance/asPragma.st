serialization
asPragma
	
	^ '<', self pragmaStart ,' ''{1}''{2}{3}{4}>' format: {
		self exampleName .
		self isActive ifFalse: [''] ifTrue: [' active: true'].
		self extractedClassName ifNil: [''] ifNotNil: [' extractedClassName:' , self extractedClassName asSymbol printString].
		self extractedMethodSelector ifNil: [''] ifNotNil: [' extractedMethodSelector:' , self extractedMethodSelector asSymbol printString]}