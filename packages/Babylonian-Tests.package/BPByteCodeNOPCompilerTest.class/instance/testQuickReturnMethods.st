nop-tests
testQuickReturnMethods
	
	| method |
	method := BPByteCodeRewriter instrumentString: 'empty' withCRs.
	self assert:  'Quick return self' equals: method symbolic.
	
	method := BPByteCodeRewriter instrumentString: 'empty \	^ 1' withCRs .
	self assert:  'Quick return 1' equals: method symbolic 