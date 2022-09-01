rewrite rules
bpSlider: aBPSlider with: originalExpressionSourceNode
	

	^ (originalExpressionSourceNode ruleName = #Operand or: [originalExpressionSourceNode ruleName = #BlockLiteral])
		ifTrue: ["A block slider" 
			currentSliderId := aBPSlider id.
			self value: originalExpressionSourceNode]
		ifFalse: ["Anything else"
			('self bpBlock: {1} enteredAt: thisContext.' format: {aBPSlider id}) , String cr , String tab ,
			(self value: originalExpressionSourceNode)]