grammar rules
AnnotatedExpression: aNode startTag: startTag actualExpression: expression endTag: endTag

	collectAnnotation := true.
	[^ {self value: expression}] 
		ensure: [collectAnnotation := false].