initialize-release
initialize

	super initialize.
	keywordMessageExtraction := BPSmalltalkGrammar synthesizedAttribute: BPKeywordMessageToAnnotation new. 
	expressionExtraction := BPSmalltalkGrammar synthesizedAttribute: BPAnnotatedExpressionExtraction new.