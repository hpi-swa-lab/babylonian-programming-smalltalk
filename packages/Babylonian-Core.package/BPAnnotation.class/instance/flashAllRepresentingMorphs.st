actions
flashAllRepresentingMorphs

	(World allMorphs 
		select: [:aSubmorph | aSubmorph isKindOf: self morphClass])
		select: [:aBPAnnotation | aBPAnnotation id = self id and: [aBPAnnotation isInWorld]]
		thenDo: [:theRepresentingMorph | Display flash: theRepresentingMorph boundsInWorld andWait: 150].
		
	