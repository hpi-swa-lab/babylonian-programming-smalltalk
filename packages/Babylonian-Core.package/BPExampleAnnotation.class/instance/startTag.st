serialization
startTag

	| example |
	example := self actualExample.
	^ '<exampleNamed: ''{1}''{2}{3}{4}>' format: {
		example exampleName .
		example isActive ifFalse: [''] ifTrue: [' active: true'].
		example receiverConstructor ifNil: [''] ifNotNil: [:c | ' self: ' , c printString].
		example argumentScripts ifEmpty: [''] ifNotEmpty: [(example argumentScripts collect: [:s | ' with: ' , s printString]) join]}