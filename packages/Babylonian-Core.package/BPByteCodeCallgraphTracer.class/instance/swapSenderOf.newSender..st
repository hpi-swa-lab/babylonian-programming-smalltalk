tracing
swapSenderOf: context newSender: newSenderContext
	
	| upwards downwards hasActiveTracing |
	"only care about swapping sender of contexts that are currently in the stack."
	("thisContext hasSender: context"thisContext sender sender sender sender sender == context) ifFalse: [^ self]. 
	
	hasActiveTracing := BPByteCodeRewriter hasActiveTracing: context method.
	
	upwards := context hasSender: newSenderContext.
	upwards ifTrue: [| depth |
		depth := self instrumentedDepthOf: context below: newSenderContext.
		events nextPut: #contextSenderChanged.
		events nextPut: -1 * depth.
		events nextPut: true.
		events nextPut: hasActiveTracing.
		^ self].
	
	downwards := newSenderContext hasSender: context.
	downwards ifTrue: [| depth |
		depth := self instrumentedDepthOf: newSenderContext below: context.
		events nextPut: #contextSenderChanged.
		events nextPut: depth.
		events nextPut: true.
		events nextPut: hasActiveTracing.
		^ self].
	
	[| depthOld depthNew |
		depthOld := self instrumentedDepthOf: context below: nil.
		depthNew := self instrumentedDepthOf: newSenderContext below: nil.
	
		events nextPut: #contextSenderChanged.
		events nextPut: depthNew - depthOld.
		events nextPut: false.
		events nextPut: hasActiveTracing.
		^ self] value