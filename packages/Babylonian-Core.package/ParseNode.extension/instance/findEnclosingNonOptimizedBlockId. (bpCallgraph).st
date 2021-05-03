*Babylonian-Core-Callgraph-ByteCode
findEnclosingNonOptimizedBlockId: encoder
	<layer: #bpCallgraph>
	^ (self findEnclosingNonOptimizedBlock: encoder) hash