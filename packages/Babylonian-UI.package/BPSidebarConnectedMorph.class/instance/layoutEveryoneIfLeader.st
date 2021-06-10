private
layoutEveryoneIfLeader
	
	| leader listGapHeight siblings usedHeight allMorphHeight smallMode |
	listGapHeight := 8.
	siblings := self owner submorphs select: [:m | m isKindOf: self class].
	leader := siblings detectMin: [:m | m top].
	leader == self ifTrue: [| annotationMorphs |
		siblings := siblings sorted: [:s1 :s2 | s1 top < s2 top].
		annotationMorphs := siblings collect: [:sibling | sibling connectedMorph].
		
		allMorphHeight := ((annotationMorphs reject: #isNil) collect: #height) sum.
		smallMode := self owner paragraph extent y > allMorphHeight.
		usedHeight := listGapHeight.
		annotationMorphs with: siblings do: [:morph :sibling | 
			morph ifNotNil: [
				morph top: (sibling top max: usedHeight).
				usedHeight := morph bottom + listGapHeight]]].