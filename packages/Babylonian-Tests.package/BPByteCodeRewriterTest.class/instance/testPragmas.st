1 - enable tracing
testPragmas
	
	| method |
	method := BPByteCodeRewriter instrumentString: 'simple \ <foo> \ ^ 1+1' withCRs.
	self deny: method isQuick. "make sure we don't accidentally create a quick (and therefore not instrumented) method"

	self assert: (method hasPragma: #foo).
	BPByteCodeRewriter enableTracingForCompiledMethod: method mode: #fast.
	self assert: (method hasPragma: #foo).
	BPByteCodeRewriter disableTracingForCompiledMethod: method mode: #fast.
	self assert: (method hasPragma: #foo)