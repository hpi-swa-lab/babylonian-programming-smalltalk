standard attributes
defaultExpression: aNode

	^ aNode children gather: [:child | self value: child]