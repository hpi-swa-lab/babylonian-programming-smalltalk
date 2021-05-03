1 - enable tracing
testSimple
	
	| method tracer |
	method := BPByteCodeRewriter instrumentString: 'simple \ ^ 1+1' withCRs.
	BPByteCodeRewriter enableTracingForCompiledMethod: method.

	tracer := BPByteCodeCallgraphTracer new.
	BPByteCodeCallgraphTracer value: tracer during: [
		self assert: 2 equals: (method valueWithReceiver: nil arguments: {})].
	self assert: '
UndefinedObject >> simple ctx: 1
^ UndefinedObject >> simple ctx: 1' withBlanksTrimmed equals: tracer eventsToStringForTest withBlanksTrimmed 