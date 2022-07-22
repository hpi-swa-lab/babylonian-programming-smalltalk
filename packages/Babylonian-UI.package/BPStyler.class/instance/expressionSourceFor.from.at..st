private
expressionSourceFor: annotation from: aText at: startTagStart
	|  startOfExpressionText expressionText |
	startOfExpressionText := aText indexOfSubCollection: annotation enclosedExpressionSource startingAt: startTagStart.
	expressionText := aText copyFrom: startOfExpressionText to: startOfExpressionText + annotation enclosedExpressionSource size - 1.	
	^ expressionText