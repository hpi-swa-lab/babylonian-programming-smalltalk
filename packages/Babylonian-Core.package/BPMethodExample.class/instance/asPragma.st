serialization
asPragma

	^ '<exampleNamed: ''{1}''{2}{3}{4}>' format: {
		self exampleName .
		self isActive ifFalse: [''] ifTrue: [' active: true'].
		self receiverConstructor ifNil: [''] ifNotNil: [:c | ' self: ' , c printString].
		self argumentScripts ifEmpty: [''] ifNotEmpty: [(self argumentScripts collect: [:s | ' with: ' , s printString]) join]}