annotation list
annotationPaneDoubleClick
	
	| entry |
	entry := self getAnnotations at: self getSelectedAnnotationIndex.
	callgraphModel selectEntry: entry.
	codePaneMethodReference := entry methodReference.
	self changed: #getCodePaneText 