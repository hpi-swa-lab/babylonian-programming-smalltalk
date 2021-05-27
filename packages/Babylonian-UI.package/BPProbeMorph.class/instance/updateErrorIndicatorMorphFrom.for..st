private
updateErrorIndicatorMorphFrom: aLineMorph for: aTrace
	
	|errorIndicatorMorph|
	errorIndicatorMorph := aLineMorph submorphNamed: #errorIndicatorHolder.
			
	aTrace exampleErrored 
		ifTrue: [errorIndicatorMorph submorphs ifEmpty: [
							errorIndicatorMorph addMorph: (self createErrorIndicatorFor: aTrace)]]
		ifFalse: [errorIndicatorMorph 
							removeAllMorphs;
							extent: 0@0].