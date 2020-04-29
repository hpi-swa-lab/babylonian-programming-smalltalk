message list
messageListIndex: anInteger

	super messageListIndex: anInteger.
	
	anInteger > 0 ifTrue: [
		currentCompiledMethod 
			propertyValueAt: #bpSourceMap 
			put: (self bpSourceMapFor: self contents)]