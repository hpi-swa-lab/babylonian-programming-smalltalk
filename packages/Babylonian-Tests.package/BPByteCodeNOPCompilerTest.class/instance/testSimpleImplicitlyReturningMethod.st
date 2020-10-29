nop-tests
testSimpleImplicitlyReturningMethod
	
	| method |
	method := BPByteCodeRewriter instrumentString: 'simple \ 1+2'  withCRs.
	self assertLiterals: method.
	self assert:  '
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
	pushConstant: 1
	pushConstant: 2
	send: +
	pop
	jumpTo: L2
	dup
	dup
	dup
	dup
	dup
	dup
L2:
	returnSelf
' withBlanksTrimmed equals: method abstractSymbolic withBlanksTrimmed