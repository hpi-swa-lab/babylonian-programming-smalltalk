grammar rules
AnnotatedExpression: aNode startTag: startTag actualExpression: expression endTag: endTag

	| previousAnnotation |
	previousAnnotation := currentAnnotation.
	currentAnnotation := BPAnnotationInformation new.
	self value: startTag.
	currentAnnotation startTagSource: startTag interval contents.
	currentAnnotation enclosedExpressionSource: (expressionExtraction value: aNode) flatten first.
	currentAnnotation annotatedExpressionSourceCode: aNode interval contents.
	annotations add: currentAnnotation.
	currentAnnotation := previousAnnotation.
	
	self value: expression