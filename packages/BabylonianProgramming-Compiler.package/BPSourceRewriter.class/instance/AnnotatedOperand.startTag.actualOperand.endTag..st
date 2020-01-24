grammar rules
AnnotatedOperand: aNode startTag: startTag actualOperand: operand endTag: endTag

	^ self rewriteNode: operand withTag: startTag