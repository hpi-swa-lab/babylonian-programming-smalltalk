private - ui
updateExpressionMorphIfNecessary
	
	| expressionBox |
	expressionBox := self ensureInputBoxNamed: #expressionBox atFront: false.
	
	self annotation hasExpression 
		ifTrue: [
			addExpressionMorph ifNotNil: [:aMorph | aMorph abandon].
			expressionMorph ifNil: [expressionMorph := self newExpressionMorph].
			"Hacky!"
			expressionMorph submorphs first model setString: self annotation expression.
			widgetsMorph addMorphBack: expressionMorph.]
		ifFalse: [
			expressionMorph ifNotNil: [:aMorph | aMorph abandon].
			addExpressionMorph ifNil: [
				addExpressionMorph := self newButtonMorphWithLabel: 'set expression' doOnClick: #setExpressionButtonClicked].
			widgetsMorph addMorphBack: addExpressionMorph].
