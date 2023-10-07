private
formatNonMethod: aText
	  
	| allRangesSubclassRegex className formattedText |
	allRangesSubclassRegex := aText string allRangesOfRegexMatches: 'subclass\: #\w+'.
	allRangesSubclassRegex ifEmpty: [^ super privateFormat: aText]. 
	"We are in a class definition and may need to add Text Decorations
	for Instance Variable Probes."
	className := aText string atAll: (allRangesSubclassRegex first start + ('subclass: #' size) to:
										allRangesSubclassRegex first stop ).
	formattedText := super privateFormat: aText.
	BPClassNameToInstanceProbes value nameToProbesDict at: className
		ifPresent: [:probesSet | probesSet do: [:anInstanceProbe | 
				self 
					applyInstanceProbeIn: formattedText 
					for: anInstanceProbe]].
	 ^ formattedText