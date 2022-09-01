grammar rules
AnnotatedBlockLiteral: aNode startTag: startTag actualBlock: block endTag: endTag

	collectAnnotation := true.
	[^ {self value: block}] 
		ensure: [collectAnnotation := false].