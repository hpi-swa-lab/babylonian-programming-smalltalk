nop-tests
testIfTrueIfFalseWithInnerReturns
	
	| method |
	method := BPByteCodeRewriter instrumentString: 'simple \ true ifTrue: [^ 1] ifFalse: [^ 2]'  withCRs.
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
	jumpFalseTo: L3
	pushConstant: 1
	jumpTo: L2
	dup
	dup
	dup
	dup
	dup
	dup
L2:
	returnTop
L3:
	pushConstant: 2
	jumpTo: L4
	dup
	dup
	dup
	dup
	dup
	dup
L4:
	returnTop' withBlanksTrimmed equals: method abstractSymbolic withBlanksTrimmed