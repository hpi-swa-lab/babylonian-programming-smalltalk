tests
testStylerSetsAnchorAttributeForNestedProbes

	| formattedSourceCode originalSourceCode styler anchorTextAttributes theTextAttributes |
	originalSourceCode := 'method
	"<bpProbe id: 1>""<bpProbe id: 2>"2 + 3"</bpProbe>""</bpProbe>"' asText.
	styler := BPStyler new.
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