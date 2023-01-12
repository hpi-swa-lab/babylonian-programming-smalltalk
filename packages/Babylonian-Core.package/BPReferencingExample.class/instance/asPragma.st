serialization
asPragma
	
	^ '<referencingExample: {1} referencing: {2}>' format: {
		self uuid asString printString.
		referencedExample uniqueIdentifier printString}