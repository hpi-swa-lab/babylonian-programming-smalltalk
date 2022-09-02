as yet unclassified
defaultExpression: aNode

	^ (aNode children 
		gather: [:c | self value: c])
		select: [:result | result notNil]