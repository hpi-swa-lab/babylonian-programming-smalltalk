private
positionInAnnotationsFor: aTraceValue and: aBPExample

	|annotations|
	annotations := aTraceValue belongingAnnotation isProbe 
		ifTrue: [aBPExample probes] 
		ifFalse: [aBPExample assertions].
	
	^ ((annotations at: aTraceValue belongingAnnotationId) collect: [:aValue | aValue  chronologicalPosition])
			indexOf: aTraceValue chronologicalPosition.