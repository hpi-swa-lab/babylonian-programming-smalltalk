private
isAlreadyAnnotatedExpressionAt: expressionStart in: aText

	^ (aText attributesAt: expressionStart - 1) anySatisfy: [:a | a isBPDecoration]