*Babylonian-Core-Callgraph-ByteCode
sizeCodeForReturn: encoder
	
	<layer: #bpCallgraph>
	| additionalSize |
	additionalSize := self additionalReturnSize: encoder returns: true.

	encoder
		if: code
		isSpecialLiteralForReturn:
			[:specialLiteral|
			 ^ (encoder sizeReturnSpecialLiteral: specialLiteral) + additionalSize].
	(self code = LdSelf or: [self code = LdSuper]) ifTrue:
		[^ encoder sizeReturnReceiver + additionalSize].
	^super sizeCodeForReturn: encoder