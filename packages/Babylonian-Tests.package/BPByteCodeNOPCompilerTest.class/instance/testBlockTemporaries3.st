enabled-tests
testBlockTemporaries3
	
	| method expected byteCode |
	method := BPByteCodeRewriter instrumentString: 'simple
	true ifTrue: [^ self] ifFalse: [ 
		[ | i1 |
			i1
		]	
	]. 
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
	closureNumCopied: 1 numArgs: 0 size: ...
		...
		pushTemp: 1
		...
		pushTemp: 1
		...
	pop
	...
	pushTemp: 0
	...' withBlanksTrimmed.
	
	expected := (expected 
		copyReplaceAll: ':' with: '\:')
		copyReplaceAll: '...' with: '.*'.
	
	self assert: (byteCode matchesRegex: expected)