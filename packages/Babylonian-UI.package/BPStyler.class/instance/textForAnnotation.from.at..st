private
textForAnnotation: annotation from: aText at: startTagStart

	| newMorph startOfExpressionText expressionText |
	newMorph := annotation asMorph.
	
	startOfExpressionText := aText indexOfSubCollection: annotation enclosedExpressionSource startingAt: startTagStart.
	expressionText := aText copyFrom: startOfExpressionText to: startOfExpressionText + annotation enclosedExpressionSource size - 1.
	(self isAlreadyAnnotatedExpressionAt: startTagStart in: aText) 
		ifTrue: [
			expressionText := (aText copyFrom: startTagStart - 1 to: startTagStart - 1) , expressionText]
		ifFalse: [
			expressionText := Character startOfHeader asString asText , expressionText.
			expressionText attributesAt: 2 do: [:attr | 
				expressionText addAttribute: attr from: 1 to: 1]].
	expressionText addAttribute: (BPTextAnchor new anchoredMorph: newMorph; yourself).
	
	^ expressionText