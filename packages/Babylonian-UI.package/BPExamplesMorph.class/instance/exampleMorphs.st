private - ui
exampleMorphs
	
	^ (self submorphs , collapsedExamplesMorph submorphs) select: [:m | 
		m isBPAnnotationMorph and: [m isExample]]