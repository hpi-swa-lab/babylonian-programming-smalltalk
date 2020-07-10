private
activateAttributesEnding: ending starting: starting 

	starting
		select: [:attribute | (attribute isKindOf: TextAnchor) and: [attribute anchoredMorph notNil]]
		thenDo: [: attribute |
			(ending includes: attribute) ifFalse: [self writeStartTagFor: attribute]]