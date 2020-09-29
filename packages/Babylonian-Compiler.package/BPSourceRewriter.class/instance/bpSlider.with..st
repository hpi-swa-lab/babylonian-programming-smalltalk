rewrite rules
bpSlider: aBPSlider with: originalExpressionSourceNode
	

	^ originalExpressionSourceNode ruleName = #Operand 
		ifTrue: ["A block slider" 
			currentSliderId := aBPSlider id.
			"<bpProbe id: 2192541>"self value: originalExpressionSourceNode"</bpProbe>"]
		ifFalse: ["Anything else"
			"<bpProbe id: 2185165>"('self bpBlock: {1} enteredAt: thisContext.' format: {aBPSlider id}) , String cr , String tab ,
			(self value: originalExpressionSourceNode)"</bpProbe>"].