*Babylonian-Core-Callgraph-ByteCode
emitCodeForReturn: stack encoder: encoder
	<layer: #bpCallgraph>
	
	self emitCodeForValue: stack encoder: encoder.
	
	"<custom code>"
	self emitNOPs: encoder stack: stack n: (self additionalReturnSize: encoder returns: true) type: #endMethod.
	"</custom code>"
	
	encoder genReturnTop