private - ui
newLabelFor: aTraceValue

	"Only for other annotations than assertions:"
	aTraceValue belongingAnnotation hasLabel ifFalse: [aTraceValue belongingAnnotation label: (
			BPProbe 
				defaultLabelFor: aTraceValue containedMethodReference
				withExpression: aTraceValue belongingAnnotation enclosedExpressionSource)].
		
	^ aTraceValue belongingAnnotation label