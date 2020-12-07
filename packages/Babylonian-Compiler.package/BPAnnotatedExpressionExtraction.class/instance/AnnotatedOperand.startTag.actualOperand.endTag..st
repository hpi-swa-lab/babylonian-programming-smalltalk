grammar rules
AnnotatedOperand: aNode startTag: startTag actualOperand: operand endTag: endTag

	collectAnnotation := true.
	[^ {self value: operand}] 
		ensure: [collectAnnotation := false].