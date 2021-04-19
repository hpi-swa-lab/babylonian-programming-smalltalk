initialize-release
newWithValues: traceValues forMorph: traceValuesMorph
	
	
	^ self new
		traceValues: traceValues;
		traceValuesMorph: traceValuesMorph;
		scaleX: (BPScale 
			newLinearScaleWithDomain: (traceValues max x negated to: traceValues max x) 
			forRange: (self coordinateSystemSize x / 2 negated to: self coordinateSystemSize x  / 2));
		scaleY: (BPScale 
			newLinearScaleWithDomain: (traceValues max y negated to: traceValues max y) 
			forRange: (self coordinateSystemSize y / 2 negated to: self coordinateSystemSize y  / 2));
		yourself