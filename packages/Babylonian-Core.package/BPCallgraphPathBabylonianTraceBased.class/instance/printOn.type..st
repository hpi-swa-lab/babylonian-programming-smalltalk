printing
printOn: aStream type: aString
	
	aStream 
		nextPutAll: aString;
		nextPutAll: ' in ';
		nextPutAll: methodReference classSymbol;
		nextPutAll: ' #';
		nextPutAll: methodReference selector;
		nextPutAll: ' ';
		"nextPutAll: id asString;"
		nextPutAll: ((self removeLineBreaksFromSourceCode: self enclosedSourceCode) contractTo: 24)