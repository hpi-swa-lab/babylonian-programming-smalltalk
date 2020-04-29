standard attributes
defaultExpression: aNode

	(aNode interval start to: aNode interval end)
		do: [:index | (self sourceMap at: index) add: aNode ruleName].

	aNode children do: [:c | self value: c].