visiting
visitBlockNode: aBlockNode
	| old |
	old := lastNonOptimizedBlock.
	aBlockNode optimized ifFalse: [lastNonOptimizedBlock := aBlockNode].
	self check: aBlockNode.
		
	aBlockNode statements do: [:statement | statement accept: self].
	lastNonOptimizedBlock := old