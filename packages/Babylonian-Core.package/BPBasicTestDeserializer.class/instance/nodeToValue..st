helpers
nodeToValue: aNode

	^ Compiler evaluate: (aNode formattedCode)