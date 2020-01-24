grammar rules
AnnotatedBinaryMessage: aNode startTag: startTag actualOperand: operand endTag: endTag

	^ self AnnotatedNode: aNode startTag: startTag actualNode: operand endTag: endTag