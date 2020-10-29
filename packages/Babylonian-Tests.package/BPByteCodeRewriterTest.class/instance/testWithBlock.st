1 - enable tracing
testWithBlock
	
	| method tracer |
	method := BPByteCodeRewriter instrumentString: 'simple \ | b | \ b := [1+1]. \ ^ b value' withCRs.
	BPByteCodeRewriter enableTracingForCompiledMethod: method.

	tracer := BPByteCodeCallgraphTracer new.
	BPByteCodeCallgraphTracer value: tracer during: [
		self assert: 2 equals: (method valueWithReceiver: nil arguments: {})].
	self assert: '
UndefinedObject >> simple ctx: 1
	UndefinedObject >> simple [1] ctx: 1
	_ UndefinedObject >> simple [1] ctx: 1
^ UndefinedObject >> simple ctx: 1' withBlanksTrimmed equals: tracer eventsToStringForTest withBlanksTrimmed 