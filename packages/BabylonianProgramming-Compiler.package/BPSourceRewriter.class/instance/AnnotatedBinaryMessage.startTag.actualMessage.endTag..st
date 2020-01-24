grammar rules
AnnotatedBinaryMessage: aNode startTag: startTag actualMessage: message endTag: endTag

	^ self rewriteNode: message withTag: startTag