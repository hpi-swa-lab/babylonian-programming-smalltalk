list bottom
bottomKey: aChar pressedFor: entry
	
	(aChar == $b and: [entry respondsTo: #methodReference]) ifTrue: [self browseMethod: entry methodReference].
	(aChar == $B and: [entry respondsTo: #doBrowse]) ifTrue: [entry doBrowse]