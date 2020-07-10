private
isAlreadyAnnotatedExpressionAt: expressionStart in: aText

	^ (aText at: expressionStart - 1) = Character startOfHeader
	