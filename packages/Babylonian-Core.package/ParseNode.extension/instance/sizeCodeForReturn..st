*Babylonian-Core-Callgraph-ByteCode
sizeCodeForReturn: encoder

	<layer: #bpCallgraph>
	
	^(self sizeCodeForValue: encoder) + encoder sizeReturnTop 
		"<custom code>" + (self additionalReturnSize: encoder returns: true) "</custom code>"