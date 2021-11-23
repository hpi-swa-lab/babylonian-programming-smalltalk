private - ui
newLabelFor: aTraceValue

	aTraceValue belongingAnnotation isAssertion ifTrue: [aTraceValue belongingAnnotation setCurrentDefaultLabel].
	
	"Only for other annotations than assertions:"
	aTraceValue belongingAnnotation hasLabel ifFalse: [aTraceValue belongingAnnotation label: (
			BPProbe 
				defaultLabelFor: aTraceValue containedMethodReference
				withExpression: aTraceValue belongingAnnotation enclosedExpressionSource)].
		
	^ aTraceValue belongingAnnotation label