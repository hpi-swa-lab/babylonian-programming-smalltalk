2 - enable tracing
enableTracingForClass: aClass selector: aSymbol
	
	
	self enableTracingForCompiledMethod: (aClass compiledMethodAt: aSymbol)