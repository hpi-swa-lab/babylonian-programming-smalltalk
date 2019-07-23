as yet unclassified
startTag

	^ '<exampleNamed: ''{1}''{2}>' format: {
		self exampleName .
		(self actualExample argumentScripts collect: [:s | ' with: ' , s]) join}