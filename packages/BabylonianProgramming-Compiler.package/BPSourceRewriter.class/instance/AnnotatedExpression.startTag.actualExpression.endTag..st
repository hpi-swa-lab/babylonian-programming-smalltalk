grammar rules
AnnotatedExpression: aNode startTag: startTag actualExpression: expression endTag: endTag

	^ self rewriteNode: expression withTag: startTag
	