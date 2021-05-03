2 - enable tracing
enableTracingForCompiledMethod: oldMethod
	
	^ self enableTracingForCompiledMethod: oldMethod mode: self instrumentationMode 