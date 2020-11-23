private
layoutEveryoneIfLeader

	| leader listGapHeight siblings usedHeight |
	listGapHeight := 8.
	siblings := self owner submorphs select: [:m | m isKindOf: self class].
	leader := siblings detectMin: [:m | m top].
	leader == self ifTrue: [| annotationMorphs |
		siblings := siblings sorted: [:s1 :s2 | s1 top < s2 top].
		annotationMorphs := siblings collect: [:sibling | sibling connectedMorph].
		
		usedHeight := listGapHeight.
		annotationMorphs do: [:morph | 
			morph ifNotNil: [
				morph top: usedHeight.
				usedHeight := usedHeight + morph height + listGapHeight]]].