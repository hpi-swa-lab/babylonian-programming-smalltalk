*Babylonian-Core-Callgraph-ByteCode
sizeCodeForEvaluatedFullClosureValue: encoder
	<layer: #bpCallgraph>
	"The closure value primitives push the arguments and the copied values.
	 The compiler guarantees that any copied values come before all local temps.
	 So on full closure activation we need do nothing."
	self error: 'full closures not supported'