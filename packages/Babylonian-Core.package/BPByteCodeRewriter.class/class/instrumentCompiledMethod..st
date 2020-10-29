1 - instrument
instrumentCompiledMethod: aCompiledMethod
	
	UIManager default inform: 'This method is not implemented due to its ambiguity. If you want to instrument a CompiledMethod without changing the method that is in use by the system, call 
	
	BPByteCodeRewriter instrumentString: aCompiledMethod getSource
	
which returns  a new and instrumented compiled method (should only be used for testing, since the method will not have a method trailer).
If you want to instrument the CompiledMethod that is in use by the system, call 
	
	BPByteCodeRewriter instrumentClass: aCompiledMethod methodClass selector: aCompiledMethod selector
	
instead. It is impossible to instrument a CompiledMethod object in place, since it cannot be grown in size to accompany the needed space for tracing statements.'