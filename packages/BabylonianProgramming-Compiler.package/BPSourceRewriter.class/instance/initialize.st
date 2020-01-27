initialize-release
initialize

	super initialize.
	keywordMessageExtraction := BPSmalltalkGrammar synthesizedAttribute: BPKeywordMessageToAnnotation new.
	currentProbeId := 0.
	currentBlockId := 0.