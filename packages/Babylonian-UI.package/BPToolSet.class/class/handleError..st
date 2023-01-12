debugging - handlers
handleError: anError
	"Double dispatch. Let the processor take care of that error, which usually calls back here to #debugProcess:..."

	anError class = Halt ifFalse: [
		BPActiveTracer value ifNotNil: [:tracer |
			tracer traceError: anError.
			tracer example suspendTracingProcess.
			Processor activeProcess suspend]].
	
	^ Processor
		debugContext: anError signalerContext
		title: anError description
		full: false
		contents: nil