private - ui
exampleMorphs

	^ self submorphs select: [:m | m isBPAnnotationMorph and: [m isExample]]