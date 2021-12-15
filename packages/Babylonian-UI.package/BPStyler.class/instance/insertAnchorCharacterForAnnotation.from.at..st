private
insertAnchorCharacterForAnnotation: annotation from: aText at: startTagStart

	|  startOfExpressionText expressionText |
	
	startOfExpressionText := aText indexOfSubCollection: annotation enclosedExpressionSource startingAt: startTagStart.
	expressionText := aText copyFrom: startOfExpressionText to: startOfExpressionText + annotation enclosedExpressionSource size - 1.
	(self isAlreadyAnnotatedExpressionAt: startTagStart in: aText) 
		ifTrue: [
			expressionText := (aText copyFrom: startTagStart - 1 to: startTagStart - 1) , expressionText]
		ifFalse: [
			expressionText := Character startOfHeader asString asText , expressionText.
			expressionText attributesAt: 2 do: [:attr | 
				expressionText addAttribute: attr from: 1 to: 1]].
		
	^ expressionText