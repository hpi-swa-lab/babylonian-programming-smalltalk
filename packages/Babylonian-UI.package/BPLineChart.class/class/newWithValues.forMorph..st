initialize-release
newWithValues: traceValues forMorph: traceValuesMorph
	
	
	| valuesToVisualize |
	valuesToVisualize := traceValues 
		ifEmpty: [#(0)]
		ifNotEmpty: [traceValues].
	^ self new
		traceValues: valuesToVisualize;
		traceValuesMorph: traceValuesMorph;
		scaleY: (BPScale 
			newLinearScaleWithDomain: (valuesToVisualize min to: valuesToVisualize max) 
			forRange: (0 to: self canvasHeight));
		yourself