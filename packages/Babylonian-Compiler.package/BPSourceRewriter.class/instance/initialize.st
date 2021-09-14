initialize-release
initialize
	
	super initialize.
	annotationExtraction := BPSmalltalkGrammar synthesizedAttribute: BPKeywordMessageToAnnotation new. 
	currentProbeId := 0.
	currentBlockId := 0.
	inCascade := false.