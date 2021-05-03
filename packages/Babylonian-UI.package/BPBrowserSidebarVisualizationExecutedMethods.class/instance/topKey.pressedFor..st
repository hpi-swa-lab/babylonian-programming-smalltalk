list top
topKey: aChar pressedFor: entry
	
	aChar == $b ifTrue: [self browseMethod: entry methodReference].
	aChar == $B ifTrue: [entry doBrowse]