grammar rules
AnnotatedOperand: aNode startTag: startTag actualOperand: operand endTag: endTag

	| annotationInformation |
	annotationInformation := self value: startTag.
	
	^ self 
		perform: ('{1}:with:' format: {annotationInformation tag}) asSymbol 
		withArguments: {annotationInformation . self value: operand}