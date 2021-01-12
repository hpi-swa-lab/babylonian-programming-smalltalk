serialization
asPragma
	
	^ '<exampleNamed: ''{1}''{2}{3}{4}>' format: {
		self exampleName.
		self isActive ifFalse: [''] ifTrue: [' active: true'].
		self receiverConstructor ifNil: [''] ifNotNil: [:aReceiverConstructor | ' self: ' , aReceiverConstructor printString].
		self argumentScripts ifEmpty: [''] ifNotEmpty: [(self argumentScripts collect: [:anArgumentScript | ' with: ' , anArgumentScript printString]) join]}