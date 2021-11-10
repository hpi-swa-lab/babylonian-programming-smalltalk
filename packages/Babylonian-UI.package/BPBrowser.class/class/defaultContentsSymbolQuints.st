controls
defaultContentsSymbolQuints
	
	^ {super defaultContentsSymbolQuints first},
		{{#unannotated
				. #toggleUnannotatedSource 
				. #showingUnannotatedSourceString
				. 'unannotated'
				. 'the textual source without Babylonian annotations'}},
		super defaultContentsSymbolQuints allButFirst