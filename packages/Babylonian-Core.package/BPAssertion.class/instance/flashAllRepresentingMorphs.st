actions
flashAllRepresentingMorphs

	BPProbeMorph allInstancesDo: [:aBPAnnotationMorph |
		(aBPAnnotationMorph id = self id and: [aBPAnnotationMorph isInWorld])
		ifTrue: [Display flash: aBPAnnotationMorph boundsInWorld andWait: 150]]