grammar rules - cascades
AnnotatedMessageChain: aNode startTag: startTag actualMessage: messageChain endTag: endTag

	^ inCascade 
		ifFalse: [
			"ignore the annotation, it should not be there!"
			self defaultExpression: aNode]
		ifTrue: [self rewriteCascadeNode: messageChain withTag: startTag]