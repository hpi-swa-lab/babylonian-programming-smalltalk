initialize-release
newWithValues: traceValues forMorph: traceValuesMorph
	
	
	^ self new
		traceValues: traceValues;
		traceValuesMorph: traceValuesMorph;
		scaleY: (BPScale 
			newLinearScaleWithDomain: (traceValues min to: traceValues max) 
			forRange: (0 to: self canvasHeight));
		yourself