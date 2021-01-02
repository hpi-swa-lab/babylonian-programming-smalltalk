initialize-release
initializeExtractionAttributes
	"These two attributes are initialized without a grammar on purpose.
	If we initialize them with a grammar (install them) they would hold
	a reference to this grammar. This would result in leaking grammars."
	
	keywordMessageExtraction := BPKeywordMessageToAnnotation new. 
	expressionExtraction := BPAnnotatedExpressionExtraction new.