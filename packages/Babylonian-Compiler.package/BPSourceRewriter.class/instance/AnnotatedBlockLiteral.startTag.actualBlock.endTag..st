grammar rules
AnnotatedBlockLiteral: aNode startTag: startTag actualBlock: block endTag: endTag

	^ self rewriteNode: block withTag: startTag