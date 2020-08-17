tests
testStylerSetsAnchorAttributeForNestedProbes

	| formattedSourceCode originalSourceCode anchorTextAttributes theTextAttributes |
	originalSourceCode := 'method
	"<bpProbe id: 1>""<bpProbe id: 2>"2 + 3"</bpProbe>""</bpProbe>"' asText.
	formattedSourceCode := styler styledTextFor: originalSourceCode.
	
	theTextAttributes := (formattedSourceCode attributesAt: 9) select: [:attribute | 
			attribute isKindOf: TextAnchor].
	self assert: 2 equals: theTextAttributes size.
	9 to: 13 do: [:offset | 
		anchorTextAttributes := (formattedSourceCode attributesAt: offset) select: [:attribute | 
			attribute isKindOf: TextAnchor].
	
		self 
			assert: anchorTextAttributes notEmpty;
			assert: anchorTextAttributes asSet = theTextAttributes asSet;
			assert: (anchorTextAttributes first anchoredMorph isKindOf: BPProbeMorph)]