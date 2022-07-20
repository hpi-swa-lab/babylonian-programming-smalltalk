private
hasExamplesMorph: aTextAttribute

	^ (aTextAttribute isKindOf: BPTextDecoration) and: [aTextAttribute anchoredMorph isExamples]