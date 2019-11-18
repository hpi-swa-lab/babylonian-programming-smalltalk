accessing
KeywordMessageSegment: aNode with: keyword and: argument

	currentAnnotation 
		at: keyword interval contents withBlanksTrimmed allButLast asSymbol
		putInformation: (self value: argument)
		