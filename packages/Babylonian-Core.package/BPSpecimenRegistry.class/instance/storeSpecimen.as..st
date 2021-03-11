accessing
storeSpecimen: aSpecimen as: aSymbol
	
	| id |
	id := UUID new asString asSymbol.
	self at: id put: aSpecimen.
	^ {aSymbol . id}