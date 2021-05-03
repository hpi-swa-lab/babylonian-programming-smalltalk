*Babylonian-Core-Callgraph-ByteCode
invocationTempIndex: encoder
	
	<layer: #bpCallgraph>
	| block |
	block := (self findEnclosingNonOptimizedBlock: encoder).
	^ (block isRootBlock: encoder)
		ifFalse: [block localsNodes size] "includes arguments, copied variables, and local temporaries" 
		ifTrue: [block temporaries size + block arguments size] "cannot use localsNodes, since copiedValues is nil which makes the method fail"