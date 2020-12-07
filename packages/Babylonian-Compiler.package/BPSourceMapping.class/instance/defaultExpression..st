standard attributes
defaultExpression: aNode

	| sourceMapNode |
	sourceMapNode := self sourceMapNodeFor: aNode.
	(aNode interval start to: (aNode interval end min: self sourceMap size))
		do: [:index | 
			(self notOhmBuiltInRule: aNode ruleName) ifTrue: [
				(self sourceMap at: index) add: sourceMapNode]].
  
	aNode children do: [:aChild | self value: aChild]