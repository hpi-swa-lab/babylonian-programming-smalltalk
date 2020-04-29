standard attributes
defaultExpression: aNode

	(aNode interval start to: (aNode interval end min: self sourceMap size))
		do: [:index | 
			(OhmBuiltInRules ownAndInheritedRules keys includes: aNode ruleName) ifFalse: [
				(self sourceMap at: index) add: aNode ruleName]].
  
	aNode children do: [:c | self value: c].