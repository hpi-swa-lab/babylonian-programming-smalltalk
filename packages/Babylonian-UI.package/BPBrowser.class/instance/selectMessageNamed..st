message list
selectMessageNamed: aSymbolOrString
	
	super selectMessageNamed: aSymbolOrString.
	
	"Workaround to clean the old BPAnnotationMorphs which were not open when 
	a new theme was applied"
	isStylingValid ifFalse: [self reopen]