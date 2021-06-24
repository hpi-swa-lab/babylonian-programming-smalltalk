private - ui
newNameFor: aTraceValue
	
	^ aTraceValue belongingProbe hasLabel
		ifTrue: [aTraceValue belongingProbe label]
		ifFalse: [aTraceValue belongingProbe label: (BPProbe defaultLabelFor: aTraceValue containedMethodReference withId: aTraceValue belongingProbeId)]