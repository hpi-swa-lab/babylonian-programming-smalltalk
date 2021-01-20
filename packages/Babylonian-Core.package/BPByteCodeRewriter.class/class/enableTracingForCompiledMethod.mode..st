2 - enable tracing
enableTracingForCompiledMethod: oldMethod mode: aSymbol
	
	^ self enableTracingForCompiledMethod: oldMethod mode: aSymbol howToAddToMethodDictWhenSlow: [:newMethod | 
		newMethod methodClass methodDict at: newMethod selector put: newMethod.
		newMethod bpExamples do: [:e | e method: newMethod]]