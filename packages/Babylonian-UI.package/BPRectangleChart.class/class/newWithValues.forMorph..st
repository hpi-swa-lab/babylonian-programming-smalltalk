initialize-release
newWithValues: traceValues forMorph: traceValuesMorph
	
	
	| biggestCoordinate absolutePoints |
	absolutePoints := traceValues collect: [:aPoint | aPoint abs].
	biggestCoordinate := {absolutePoints max x. absolutePoints max y} max.
	^ self new
		traceValues: traceValues;
		traceValuesMorph: traceValuesMorph;
		scaleX: (BPScale 
			newLinearScaleWithDomain: (biggestCoordinate negated to: biggestCoordinate) 
			forRange: (self coordinateSystemSize x / 2 negated to: self coordinateSystemSize x  / 2));
		scaleY: (BPScale 
			newLinearScaleWithDomain:  (biggestCoordinate negated to: biggestCoordinate) 
			forRange: (self coordinateSystemSize y / 2 negated to: self coordinateSystemSize y  / 2));
		yourself