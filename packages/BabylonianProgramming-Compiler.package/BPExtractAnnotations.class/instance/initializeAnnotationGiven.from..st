annotation processing
initializeAnnotationGiven: aNode from: startTag

	currentAnnotation startTagSource: startTag interval contents.
	currentAnnotation enclosedExpressionSource: (expressionExtraction value: aNode) flatten first.
	currentAnnotation annotatedExpressionSourceCode: aNode interval contents.