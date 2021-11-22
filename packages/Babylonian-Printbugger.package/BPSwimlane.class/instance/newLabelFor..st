private - ui
newLabelFor: aTraceValue

	aTraceValue belongingAnnotation hasLabel ifFalse: [ aTraceValue belongingAnnotation label: (
			BPProbe 
				defaultLabelFor: aTraceValue containedMethodReference
				withExpression: aTraceValue belongingAnnotation enclosedExpressionSource)].
		
	^ aTraceValue belongingAnnotation label