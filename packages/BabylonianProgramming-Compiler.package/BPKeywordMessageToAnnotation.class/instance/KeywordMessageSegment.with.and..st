accessing
KeywordMessageSegment: aNode with: keyword and: argument

	currentAnnotation 
		at: keyword interval contents withBlanksTrimmed allButLast asSymbol
		putInformation: argument interval contents withBlanksTrimmed.
		