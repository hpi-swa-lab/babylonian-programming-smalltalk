private - ui
newNameFor: aTraceValue
	
	aTraceValue belongingProbe hasLabel ifFalse: [ aTraceValue belongingProbe label: (
			BPProbe 
				defaultLabelFor: aTraceValue containedMethodReference 
				withId: aTraceValue belongingProbeId)].
		
	^ aTraceValue belongingProbe label