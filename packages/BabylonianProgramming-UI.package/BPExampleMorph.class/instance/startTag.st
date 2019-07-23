serialization
startTag

	^ '<exampleNamed: ''{1}'' {2}{3}given: {4}{5}>' format: {
		self example exampleName .
		self example isActive ifFalse: [''] ifTrue: ['active: true '].
		self example receiverConstructor ifNil: [''] ifNotNil: [:c | 'self: ' , c printString , String space].
		self example argumentScripts first printString.
		(self example argumentScripts copyWithoutFirst collect: [:s | ' and: ' , s printString]) join}