grammar rules
expressionAnnotationStart: aNode with: startString and: whitespace and: moreWhitespace and: annotationExpression and: evenMoreSpace and: endString

	| previousAnnotation resultAnnotation |
	previousAnnotation := currentAnnotation.
	
	"The following sets currentAnnotation."
	self value: annotationExpression.
	
	resultAnnotation := currentAnnotation.
	currentAnnotation := previousAnnotation.
	^ resultAnnotation