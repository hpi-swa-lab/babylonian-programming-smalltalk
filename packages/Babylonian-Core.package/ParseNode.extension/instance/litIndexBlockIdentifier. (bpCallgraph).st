*Babylonian-Core-Callgraph-ByteCode
litIndexBlockIdentifier: encoder

	<layer: #bpCallgraph>
	| lastBlock |
	lastBlock := self findEnclosingNonOptimizedBlock: encoder.
	^ lastBlock litIndexBlockIdentifier: encoder