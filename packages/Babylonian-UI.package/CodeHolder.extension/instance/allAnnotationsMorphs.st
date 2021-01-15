*Babylonian-UI-annotations
allAnnotationsMorphs

	^ self codeTextMorph allMorphs select: [:m | m isBPAnnotationMorph]