updating
updateExampleMorphsFrom: examples
	
	| currentExamples exampleMorphs examplesToAdd examplesToDelete morphsToAdd |
	exampleMorphs := self submorphs select: [:m | m isBPAnnotationMorph and: [m isExample]].
	currentExamples := exampleMorphs collect: [:m | m example].
	examplesToDelete := currentExamples difference: examples.
	examplesToAdd := examples difference: currentExamples.
	
	examplesToDelete do: [:example |
		exampleMorphs detect: [:m | m example == example] ifFound: [:m | m abandon]].
	
	morphsToAdd := examplesToAdd collect: [:example |
		(BPExampleAnnotation 
			newFor: example 
			in: self annotation methodReference) asMorph].
	morphsToAdd do: [:m |
		self addMorph: m inFrontOf: buttonBar].
	
	(examplesToDelete notEmpty or: [examplesToAdd notEmpty]) ifTrue: [
		self isInWorld ifTrue: [self codeContentChanged]].	