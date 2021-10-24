private
hasExamplesMorph: aTextAttribute
	
	^ (aTextAttribute isKindOf: BPTextAnchor) and: [aTextAttribute anchoredMorph isExamples]