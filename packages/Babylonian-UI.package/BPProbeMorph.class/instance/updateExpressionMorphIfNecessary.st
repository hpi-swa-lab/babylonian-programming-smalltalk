private - ui
updateExpressionMorphIfNecessary
	
	self annotation hasExpression 
		ifTrue: [
			addExpressionMorph ifNotNil: [:aMorph | aMorph abandon].
			expressionMorph ifNil: [
				expressionMorph := self newExpressionMorph.
				widgetsMorph addMorphBack: expressionMorph]]
		ifFalse: [
			expressionMorph ifNotNil: [:aMorph | aMorph abandon].
			addExpressionMorph ifNil: [
				addExpressionMorph := self newAddExpressionMorph.
				widgetsMorph addMorphBack: addExpressionMorph]].