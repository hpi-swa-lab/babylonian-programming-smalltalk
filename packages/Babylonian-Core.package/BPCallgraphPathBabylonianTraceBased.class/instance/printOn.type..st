as yet unclassified
printOn: aStream type: aString
	
	aStream 
		nextPutAll: aString;
		nextPutAll: ' ';
		nextPutAll: id asString;
		nextPutAll: ' in ';
		nextPutAll: methodReference classSymbol;
		nextPutAll: ' #';
		nextPutAll: methodReference selector