message list
messageListIndex: anInteger

	super messageListIndex: anInteger.
	
	currentCompiledMethod 
		propertyValueAt: #bpSourceMap 
		put: (self bpSourceMapFor: self contents).