private - ui
newLabelFor: aTraceValue
	
	aTraceValue belongingProbe hasLabel ifFalse: [ aTraceValue belongingProbe label: (
			BPProbe 
				defaultLabelFor: aTraceValue containedMethodReference
				withExpression: aTraceValue belongingProbe enclosedExpressionSource)].
		
	^ aTraceValue belongingProbe label