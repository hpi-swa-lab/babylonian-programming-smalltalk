contents
contentsChanged

	super contentsChanged.
	
	 selectedMessageName ifNotNil: [
		currentCompiledMethod 
			propertyValueAt: #bpSourceMap 
			put: (self bpSourceMapFor: self contents)]