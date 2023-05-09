private - ui
newLabel

	"Only for other annotations than assertions:"
	traceValue belongingAnnotation hasLabel ifFalse: [traceValue belongingAnnotation label: (
			BPProbe 
				defaultLabelFor: traceValue containedMethodReference
				withExpression: traceValue belongingAnnotation enclosedExpressionSource)].
		
	^ traceValue belongingAnnotation label