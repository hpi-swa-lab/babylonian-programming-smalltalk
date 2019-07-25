serialization
startTag

	^ '<exampleNamed: ''{1}'' {2}{3}{4}{5}>' format: {
		self example exampleName .
		self example isActive ifFalse: [''] ifTrue: ['active: true '].
		self example receiverConstructor ifNil: [''] ifNotNil: [:c | 'self: ' , c printString , String space].
		self example argumentScripts ifEmpty: [''] ifNotEmpty: ['given: ' , self example argumentScripts first printString].
		self example argumentScripts ifEmpty: [''] ifNotEmpty: [(self example argumentScripts copyWithoutFirst collect: [:s | ' and: ' , s printString]) join]}