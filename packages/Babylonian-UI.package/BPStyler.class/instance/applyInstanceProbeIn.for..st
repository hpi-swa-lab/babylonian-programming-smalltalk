private
applyInstanceProbeIn: aPreformattedText for: anInstanceProbe
	  
	| interval |
	interval := (aPreformattedText string 
		allRangesOfRegexMatches: '(''| )',  anInstanceProbe variableName, '(''| )') first.
		
	aPreformattedText 
		addAttribute: (BPTextDecoration new
			anchoredMorph: (self annotationMorphFor: anInstanceProbe);
			yourself)
		from: interval start +  1
		to: interval stop - 1.