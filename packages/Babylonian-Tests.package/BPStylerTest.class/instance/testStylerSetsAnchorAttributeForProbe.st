tests
testStylerSetsAnchorAttributeForProbe

	| formattedSourceCode originalSourceCode anchorTextAttributes theTextAttribute |
	originalSourceCode := 'method
	"<bpProbe id: 31412>"2 + 3"</bpProbe>"' asText.
	formattedSourceCode := styler styledTextFor: originalSourceCode.
	
	theTextAttribute := ((formattedSourceCode attributesAt: 11) select: [:attribute | 
			attribute isKindOf: TextAnchor]) first.
	11 to: 15 do: [:offset | 
		anchorTextAttributes := (formattedSourceCode attributesAt: offset) select: [:attribute | 
			attribute isKindOf: TextAnchor].
	
		self 
			assert: anchorTextAttributes notEmpty;
			assert: anchorTextAttributes first = theTextAttribute;
			assert: (anchorTextAttributes first anchoredMorph isKindOf: BPProbeMorph);
			assert: anchorTextAttributes first anchoredMorph id = 31412].