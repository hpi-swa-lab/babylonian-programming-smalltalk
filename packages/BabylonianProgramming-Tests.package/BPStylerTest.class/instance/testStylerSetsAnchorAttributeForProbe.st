tests
testStylerSetsAnchorAttributeForProbe

	| formattedSourceCode originalSourceCode styler anchorTextAttributes theTextAttribute |
	originalSourceCode := 'method
	"<bpProbe>"2 + 3"</bpProbe>"' asText.
	styler := BPStyler new.
	formattedSourceCode := styler styledTextFor: originalSourceCode.
	
	theTextAttribute := ((formattedSourceCode attributesAt: 9) select: [:attribute | 
			attribute isKindOf: TextAnchor]) first.
	9 to: 13 do: [:offset | 
		anchorTextAttributes := (formattedSourceCode attributesAt: offset) select: [:attribute | 
			attribute isKindOf: TextAnchor].
	
		self 
			assert: anchorTextAttributes notEmpty;
			assert: anchorTextAttributes first = theTextAttribute;
			assert: (anchorTextAttributes first anchoredMorph isKindOf: BPProbeMorph)]