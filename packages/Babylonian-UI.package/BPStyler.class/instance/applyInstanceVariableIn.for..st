private
applyInstanceVariableIn: aPreformmattedText for: anInstanceProbe
	  
	| interval |
	interval := (aPreformmattedText string 
		allRangesOfRegexMatches: '(''| )',  anInstanceProbe variableName, '(''| )') first.
		
	aPreformmattedText 
		addAttribute: (BPTextDecoration new
			anchoredMorph: (self annotationMorphFor: anInstanceProbe);
			yourself)
		from: interval start +  1
		to: interval stop - 1.