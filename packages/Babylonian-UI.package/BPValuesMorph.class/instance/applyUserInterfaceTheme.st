updating
applyUserInterfaceTheme
	(self allMorphs 
		select: [:aSubmorph | (aSubmorph isKindOf: TextMorph) or: [aSubmorph isKindOf: StringMorph]])
		do: [:aTextualMorph | 
			aTextualMorph color: self class textColor.
			(aTextualMorph isKindOf: TextMorph) ifTrue: [ aTextualMorph selectionColor: self class textColor]]