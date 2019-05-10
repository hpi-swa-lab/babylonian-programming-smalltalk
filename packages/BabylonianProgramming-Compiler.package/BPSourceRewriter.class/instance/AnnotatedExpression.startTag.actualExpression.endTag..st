grammar rules
AnnotatedExpression: aNode startTag: startTag actualExpression: expression endTag: endTag

	| annotationInformation |
	annotationInformation := self value: startTag.
	
	^ self 
		perform: ('{1}:with:' format: {annotationInformation tag}) asSymbol 
		withArguments: {annotationInformation . self value: expression}