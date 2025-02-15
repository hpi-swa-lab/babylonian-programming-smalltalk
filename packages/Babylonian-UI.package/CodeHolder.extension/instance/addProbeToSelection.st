*Babylonian-UI-annotations
addProbeToSelection

	self editSelection == #editClass 
		ifTrue: [self addAnnotationAtSelection: BPInstanceVariableProbe new]
		ifFalse: [self addAnnotationAtSelection: BPProbe new]
	