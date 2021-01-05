*Babylonian-Core-Callgraph-ByteCode
emitNOPs: encoder stack: stack n: aNumber type: aSymbol
	
	<layer: #bpCallgraph>
	| start |
	true caseOf: {
		[aSymbol == #begin] -> [stack push: 3. stack pop: 3].
		[aSymbol == #beginRoot] -> [stack push: 2. stack pop: 2].
		[aSymbol == #beforeBlock] -> [stack push: 1. stack pop: 1].
		[aSymbol == #endMethod or: [aSymbol == #endBlock]] -> [stack push: 3. stack pop: 3]}.
	start := encoder pc + 1.
	encoder genNops: aNumber.
	encoder rootNode 
		rememberNOPs: aSymbol 
		range: (start to: encoder pc)
		blockId: (self findEnclosingNonOptimizedBlockId: encoder) 