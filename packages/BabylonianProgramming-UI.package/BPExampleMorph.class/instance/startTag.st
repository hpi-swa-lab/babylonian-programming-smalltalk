serialization
startTag

	^ '<exampleNamed: ''{1}'' given: {2}{3}>' format: {
		self example exampleName .
		self example argumentScripts first printString.
		(self example argumentScripts copyWithoutFirst collect: [:s | ' and: ' , s printString]) join}