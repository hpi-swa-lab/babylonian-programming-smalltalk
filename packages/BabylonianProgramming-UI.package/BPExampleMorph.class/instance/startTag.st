serialization
startTag

	^ '<exampleNamed: ''{1}''{2}{3}{4}>' format: {
		self example exampleName .
		self example isActive ifFalse: [''] ifTrue: [' active: true'].
		self example receiverConstructor ifNil: [''] ifNotNil: [:c | ' self: ' , c printString].
		self example argumentScripts ifEmpty: [''] ifNotEmpty: [(self example argumentScripts collect: [:s | ' with: ' , s printString]) join]}