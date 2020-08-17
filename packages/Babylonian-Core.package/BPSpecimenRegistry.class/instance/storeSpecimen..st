accessing
storeSpecimen: aSpecimen

	| id |
	id := UUID new asString asSymbol.
	self at: id put: aSpecimen.
	^ {#object . id}