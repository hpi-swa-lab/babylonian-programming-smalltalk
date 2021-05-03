as yet unclassified
update: aSymbol
	
	aSymbol == getBackgroundColorSelector ifTrue: [self updateBackgroundColors].
	super update: aSymbol