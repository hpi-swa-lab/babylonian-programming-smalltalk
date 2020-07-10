grammar rules
AnnotatedUnaryMessageSend: aNode startTag: startTag actualMessage: message endTag: endTag

	^ self rewriteNode: message withTag: startTag