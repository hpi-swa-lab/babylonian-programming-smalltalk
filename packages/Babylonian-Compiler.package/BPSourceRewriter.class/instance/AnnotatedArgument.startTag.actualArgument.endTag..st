grammar rules
AnnotatedArgument: aNode startTag: startTag actualArgument: argument endTag: endTag

	^ self rewriteArgumentNode: argument withTag: startTag