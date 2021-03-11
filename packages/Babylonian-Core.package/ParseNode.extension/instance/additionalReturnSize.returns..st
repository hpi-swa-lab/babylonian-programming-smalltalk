*Babylonian-Core-Callgraph-ByteCode
additionalReturnSize: encoder returns: aBoolean

	<layer: #bpCallgraph>
	| size tracerClassLitIndex blockIdentifierLitIndex exitInvocationLitIndex invocationTempIndex |
	tracerClassLitIndex := self litIndexTracerClass: encoder.
	blockIdentifierLitIndex := self litIndexBlockIdentifier: encoder.
	exitInvocationLitIndex :=  self litIndexExitInvocation: encoder.
	invocationTempIndex := self invocationTempIndex: encoder.
	
	size := 0.
	size := size + (encoder copy sizePushLiteralVar: tracerClassLitIndex).
	size := size + (encoder copy sizePushLiteralVar: blockIdentifierLitIndex).
	size := size + (encoder copy sizePushSpecialLiteral: aBoolean).
	size := size + (encoder copy sizePushTemp: invocationTempIndex).
	size := size + (encoder copy sizeSend: exitInvocationLitIndex numArgs: 3).
	size := size + (encoder copy sizePop).
	^ size