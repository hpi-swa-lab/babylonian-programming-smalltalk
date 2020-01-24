grammar rules
AnnotatedKeywordMessage: aNode startTag: startTag actualMessage: message endTag: endTag

	^ self rewriteNode: message withTag: startTag