grammar rules
AnnotatedBinaryMessageSend: aNode startTag: startTag actualMessage: message endTag: endTag

	collectAnnotation := true.
	[^ {self value: message}] 
		ensure: [collectAnnotation := false].