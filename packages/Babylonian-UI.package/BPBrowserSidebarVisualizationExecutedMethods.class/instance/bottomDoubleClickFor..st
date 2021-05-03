list bottom
bottomDoubleClickFor: entry
	
	(entry respondsTo: #methodReference) ifTrue: [self browseMethod: entry methodReference]