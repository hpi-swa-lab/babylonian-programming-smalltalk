*Babylonian-Core-Callgraph-ByteCode
litIndexBlockIdentifier: encoder

	<layer: #bpCallgraph>

	self assert: self optimized not.
	^ encoder sharableLitIndex: (BPByteCodeAssociation 
		key: (
			'bpClassNameMethodNameBlockIdx-', 
			(self blockExtent), '-', 
			(self findEnclosingNonOptimizedBlockId: encoder), '-',
			(temporaries size) "number of block local, non-copied, temporaries"
		) asSymbol 
		value: nil)