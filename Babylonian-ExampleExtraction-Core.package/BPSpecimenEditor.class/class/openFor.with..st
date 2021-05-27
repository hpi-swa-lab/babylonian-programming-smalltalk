instance creation
openFor: aUUIDasSymbol with: aMethod
	
	| tool |
	tool := self new
		method: aMethod;
		specimenUUIDSymbol: aUUIDasSymbol;
		yourself.
		
	^ ToolBuilder open: tool 