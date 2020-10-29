3 - disable tracing
disableTracingForClass: aClass selector: aSymbol
	
	
	self disableTracingForCompiledMethod: (aClass compiledMethodAt: aSymbol)