private - ui
updateExpressionMorphIfNecessary
	
	expressionMorph ifNil: [
		expressionMorph := self newExpressionMorph.
		self addMorphFront: expressionMorph]