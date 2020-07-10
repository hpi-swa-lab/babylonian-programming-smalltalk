private
deactivateAttributesEnding: ending starting: starting
	
	ending reversed
		select: [:attribute | (attribute isKindOf: TextAnchor) and: [attribute anchoredMorph notNil]]
		thenDo: [: attribute | (starting includes: attribute) ifFalse: [self writeEndTagFor: attribute]]