3 - disable tracing
disableTracingForCompiledMethod: oldMethod mode: aSymbol
	
	^ self disableTracingForCompiledMethod: oldMethod mode: aSymbol howToAddToMethodDictWhenSlow: [:newMethod | 
		newMethod methodClass methodDict at: newMethod selector put: newMethod]