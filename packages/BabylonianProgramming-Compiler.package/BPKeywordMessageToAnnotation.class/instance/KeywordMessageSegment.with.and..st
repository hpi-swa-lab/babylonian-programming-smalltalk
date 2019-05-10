accessing
KeywordMessageSegment: aNode with: keyword and: argument

	currentAnnotation 
		at: keyword interval contents withBlanksTrimmed allButLast asSymbol
		addInformation: argument interval contents 