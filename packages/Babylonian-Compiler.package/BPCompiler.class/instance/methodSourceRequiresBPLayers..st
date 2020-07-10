testing
methodSourceRequiresBPLayers: sourceCode

	| sourceCodeString |
	sourceCodeString := sourceCode asString.
	^ self annotationKeywords anySatisfy: [:keyword |
		sourceCodeString includesSubstring: keyword]