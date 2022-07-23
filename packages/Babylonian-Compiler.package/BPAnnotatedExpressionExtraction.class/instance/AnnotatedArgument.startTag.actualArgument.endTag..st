grammar rules
AnnotatedArgument: aNode startTag: startTag actualArgument: argument endTag: endTag
	collectAnnotation := true.
	[^ {self value: argument}] 
		ensure: [collectAnnotation := false].