*Babylonian-UI-private
doAddAnnotation: anAnnotation in: interval
	"Separated from addAnotationIn: to allow for multiple annotations to be added without saving first."
	| actualInterval |
	actualInterval := self determineIntervalToAnnotateFor: anAnnotation in: interval.
	actualInterval ifNil: [self codeTextMorph textMorph flash. ^ self].
	
	anAnnotation isInstanceVariableProbe 
		ifTrue: [self doAddInstanceProbeToRegistry: anAnnotation nameIn: actualInterval] 
		ifFalse: [self doAddAnnotationMorphToMethod: anAnnotation in: actualInterval].