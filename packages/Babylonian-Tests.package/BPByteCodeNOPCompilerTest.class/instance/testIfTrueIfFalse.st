nop-tests
testIfTrueIfFalse
	
	| method |
	method := BPByteCodeRewriter instrumentString: 'simple \ ^ true ifTrue: [1] ifFalse: [2]'  withCRs.
	self assertLiterals: method.
	self assert: 'jumpTo: L1
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
	pushConstant: true
	jumpFalseTo: L2
	pushConstant: 1
	jumpTo: L3
L2:
	pushConstant: 2
L3:
	jumpTo: L4
	dup
	dup
	dup
	dup
	dup
	dup
L4:
	returnTop' withBlanksTrimmed equals: method abstractSymbolic withBlanksTrimmed