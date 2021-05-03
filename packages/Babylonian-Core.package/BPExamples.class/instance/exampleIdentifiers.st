accessing
exampleIdentifiers
	
	^ (self examples collect: [:example | example uniqueIdentifier]) asSet