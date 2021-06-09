private - ui
updateExpressionMorphIfNecessary
	
	| inputsBox |
	inputsBox := self ensureInputBoxNamed: #inputsBox atFront: false.
	
	self annotation hasExpression 
		ifTrue: [
			addExpressionMorph ifNotNil: [:aMorph | aMorph abandon].
			expressionMorph ifNil: [expressionMorph := self newExpressionMorph].
			"Hacky!"
			expressionMorph submorphs first model setString: self annotation expression.
			inputsBox addMorphFront: expressionMorph.]
		ifFalse: [
			expressionMorph ifNotNil: [:aMorph | aMorph abandon].
			addExpressionMorph ifNil: [
				addExpressionMorph := self newButtonMorphWithLabel: 'set expression' doOnClick: #setExpressionButtonClicked].
			inputsBox addMorphFront: addExpressionMorph].