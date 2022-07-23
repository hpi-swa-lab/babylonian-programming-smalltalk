tests
testStylerSetsAnchorAttributeForAttributeProbe

	| formattedSourceCode originalSourceCode anchorTextAttributes theTextAttribute |
	originalSourceCode := 'methodWithArgument: "<bpProbe id: 31412>"argument1"</bpProbe>"
	2 + 3' asText.
	formattedSourceCode := styler styledTextFor: originalSourceCode.
	
	theTextAttribute := ((formattedSourceCode attributesAt: 21) select: [:attribute | 
			attribute isKindOf: TextAnchor]) first.
	21 to: 29 do: [:offset | 
		anchorTextAttributes := (formattedSourceCode attributesAt: offset) select: [:attribute | 
			attribute isKindOf: TextAnchor].
	
		self 
			assert: anchorTextAttributes notEmpty;
			assert: anchorTextAttributes first = theTextAttribute;
			assert: (anchorTextAttributes first anchoredMorph isKindOf: BPProbeMorph);
			assert: anchorTextAttributes first anchoredMorph id = 31412].