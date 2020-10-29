nop-tests
testBlockWithExplicitReturn
	
	| method |
	method := BPByteCodeRewriter instrumentString: 'simple \ ^ [^ #block]'  withCRs.
	self assertLiterals: method.
	self assert: '
	jumpTo: L1
	dup
	dup
	dup
	dup
	dup
	dup
	dup
	dup
	dup
	dup
L1:
	jumpTo: L2
	dup
L2:
	closureNumCopied: 0 numArgs: 0 size: 14
		jumpTo: L3
		dup
		dup
		dup
		dup
L3:
		pushConstant: #block
		jumpTo: L4
		dup
		dup
		dup
		dup
		dup
		dup
L4:
		returnTop
	jumpTo: L5
	dup
	dup
	dup
	dup
	dup
	dup
L5:
	returnTop' withBlanksTrimmed equals: method abstractSymbolic withBlanksTrimmed