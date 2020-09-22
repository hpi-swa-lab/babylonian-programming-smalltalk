private - ui
updateExpressionMorphIfNecessary
	
	self annotation hasExpression 
		ifTrue: [
			addExpressionMorph ifNotNil: [:m | m abandon].
			expressionMorph ifNil: [
				expressionMorph := self newExpressionMorph.
				widgetsMorph addMorphBack: expressionMorph]]
		ifFalse: [
			expressionMorph ifNotNil: [:m | m abandon].
			addExpressionMorph ifNil: [
				addExpressionMorph := self newAddExpressionMorph.
				widgetsMorph addMorphBack: addExpressionMorph]]