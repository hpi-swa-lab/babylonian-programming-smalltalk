enabled-tests
testBlockTemporaries2
	
	| method expected byteCode |
	method := BPByteCodeRewriter instrumentString: 'simple
	| t1 t2 | 
	[
		| i3 i4 |
		i3 := i4 := $a. 
		[]. 
	]. 
	[ | i1 |
		i1
	]'.
	self assertLiterals: method.
	BPByteCodeRewriter enableTracingForCompiledMethod: method.

	byteCode := method abstractSymbolic withBlanksTrimmed.
	expected := '
	...
	storeIntoTemp: 2
	...
	pushTemp: 2
	...
	pushTemp: 2
	closureNumCopied: 1 numArgs: 0 size: ...
		...
		pushTemp: 2
		...
		pushTemp: 2
		closureNumCopied: 1 numArgs: 0 size: ...
			...
			pushTemp: 0
			...
			pushTemp: 0
			...
		pushTemp: 2
		...
		pop
		...
	pop
	pushTemp: 2
	closureNumCopied: 1 numArgs: 0 size: ...
		...
		pushTemp: 1
		...
		pushTemp: 1
		...
	pop
	...
	pushTemp: 2
	...' withBlanksTrimmed.
	
	expected := (expected 
		copyReplaceAll: ':' with: '\:')
		copyReplaceAll: '...' with: '.*'.
	
	self assert: (byteCode matchesRegex: expected)