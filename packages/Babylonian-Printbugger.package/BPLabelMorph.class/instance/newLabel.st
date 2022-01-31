private - ui
newLabel

	"Only for other annotations than assertions:"
	self traceValue belongingAnnotation hasLabel ifFalse: [self traceValue belongingAnnotation label: (
			BPProbe 
				defaultLabelFor: self traceValue containedMethodReference
				withExpression: self traceValue belongingAnnotation enclosedExpressionSource)].
		
	^ self traceValue belongingAnnotation label