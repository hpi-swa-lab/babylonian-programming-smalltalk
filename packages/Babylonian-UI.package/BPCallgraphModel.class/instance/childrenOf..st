as yet unclassified
childrenOf: aBPCallgraphEntry
	
	^ self class showReturnNodes
		ifTrue: [aBPCallgraphEntry children]
		ifFalse: [self withoutReturnNodes: aBPCallgraphEntry children]