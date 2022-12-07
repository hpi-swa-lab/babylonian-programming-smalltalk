*Babylonian-Core-Callgraph-ByteCode
emitCodeForReturn: stack encoder: encoder
	<layer: #bpCallgraph>
	| nops |
	nops := [self emitNOPs: encoder stack: stack n: (self additionalReturnSize: encoder returns: true) type: #endMethod].

	encoder
		if: code
		isSpecialLiteralForReturn:
			[:specialLiteral|
			"short returns"
			nops value.
			 encoder genReturnSpecialLiteral: specialLiteral.
			 stack push: 1 "doesnt seem right".
			 ^self].
	(self code = LdSelf or: [self code = LdSuper]) ifTrue: 
		["short returns"
		 nops value.
		 encoder genReturnReceiver.
		 stack push: 1 "doesnt seem right".
		 ^self].
	super emitCodeForReturn: stack encoder: encoder