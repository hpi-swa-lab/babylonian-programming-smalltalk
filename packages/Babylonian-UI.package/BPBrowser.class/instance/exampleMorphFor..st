private
exampleMorphFor: anExample
	
	^ self codeTextMorph allMorphs 
		detect: [:m | m isBPAnnotationMorph and: [m isExample and: [m example == anExample]]]
		ifNone: [nil]