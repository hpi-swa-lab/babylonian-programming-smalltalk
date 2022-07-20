tests
getSourceFor: aProbeMorph
	
	| anchorAttribute |
	anchorAttribute := BPTextDecoration new anchoredMorph: aProbeMorph.
	source addAttribute: anchorAttribute from: expressionInterval start to: expressionInterval stop.
	
	^ source asBPSource