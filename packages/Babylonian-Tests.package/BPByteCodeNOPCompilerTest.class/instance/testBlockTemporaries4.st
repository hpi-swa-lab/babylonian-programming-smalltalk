enabled-tests
testBlockTemporaries4
	
	| method expected byteCode |
	method := BPByteCodeRewriter instrumentString: 'simple
	[ :a1 :a2 | | i1 |
		i1 := a1 := a2.
	]	
	'.
	self assertLiterals: method.
	BPByteCodeRewriter enableTracingForCompiledMethod: method.

	byteCode := method abstractSymbolic withBlanksTrimmed.
	expected := '
	...
	storeIntoTemp: 0
	...
	pushTemp: 0
	...
	pushTemp: 0
	closureNumCopied: 1 numArgs: 2 size: ...
		...
		pushTemp: 3
		...
		pushTemp: 3
		...
	pop
	...
	pushTemp: 0
	...' withBlanksTrimmed.
	
	expected := (expected 
		copyReplaceAll: ':' with: '\:')
		copyReplaceAll: '...' with: '.*'.
	
	self assert: (byteCode matchesRegex: expected)