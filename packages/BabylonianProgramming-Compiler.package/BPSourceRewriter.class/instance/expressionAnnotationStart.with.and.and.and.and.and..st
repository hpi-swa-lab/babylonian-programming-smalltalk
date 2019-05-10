grammar rules
expressionAnnotationStart: aNode with: startString and: whitespace and: moreWhitespace and: annotationExpression and: evenMoreSpace and: endString

	| previousAnnotation resultAnnotation |
	previousAnnotation := currentAnnotation.
	currentAnnotation := BPAnnotationInformation new.
	self value: annotationExpression.
	resultAnnotation := currentAnnotation.
	currentAnnotation := previousAnnotation.
	^ resultAnnotation