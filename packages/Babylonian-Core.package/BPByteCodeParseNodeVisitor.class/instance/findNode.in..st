public
findNode: aParseNode in: aRootParseNode

	lastNonOptimizedBlock := nil.
	whenFoundBlock := [^ lastNonOptimizedBlock].
	targetNode := aParseNode.
	aRootParseNode accept: self.
	self error: 'node not found'