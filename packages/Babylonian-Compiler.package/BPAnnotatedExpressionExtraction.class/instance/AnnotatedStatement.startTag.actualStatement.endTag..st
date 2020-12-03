grammar rules
AnnotatedStatement: aNode startTag: startTag actualStatement: statement endTag: endTag

	collectAnnotation := true.
	[^ {self value: statement}] 
		ensure: [collectAnnotation := false]