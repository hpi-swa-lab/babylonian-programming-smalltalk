private
activateAttributesEnding: ending starting: starting
	
	(starting
		select: [:attribute | (attribute isKindOf: TextAnchor) and: [attribute anchoredMorph notNil]])
		select: [:attribute | self attributeShouldBeWritten: attribute]
		thenDo: [:attribute |
			(ending includes: attribute) ifFalse: [self writeStartTagFor: attribute]].