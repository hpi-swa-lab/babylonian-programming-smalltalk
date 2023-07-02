updating
applyUserInterfaceTheme

	super applyUserInterfaceTheme.
	((self allMorphs detect: [:m | m externalName = #bpSwimlaneValue] ifNone: [^self]) allMorphs
		select: [:aSubmorph | (aSubmorph isKindOf: TextMorph) or: [aSubmorph isKindOf: StringMorph]])
	do: [:aTextualMorph | 
		aTextualMorph color: self textColor.
		(aTextualMorph isKindOf: TextMorph) ifTrue: [ aTextualMorph selectionColor: self class textColor]]