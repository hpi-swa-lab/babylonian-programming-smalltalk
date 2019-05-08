testing
methodSourceRequiresBPLayers: sourceCode

	| sourceCodeString |
	sourceCodeString := sourceCode asString.
	^ self keywords anySatisfy: [:keyword |
		sourceCodeString includesSubstring: keyword]