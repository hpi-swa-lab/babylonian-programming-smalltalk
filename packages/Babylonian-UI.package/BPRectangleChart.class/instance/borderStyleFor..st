visualization
borderStyleFor: aValue
	
	
	| scaledXValue scaledYValue borderWidth color |
	scaledYValue := self scaleY scaleBehavior value: self scaleY domain value: aValue y.
	scaledXValue := self scaleX scaleBehavior value: self scaleX domain value: aValue x.
	borderWidth := 0.
	color := Color transparent.
	
	((scaledYValue <= self class highlightedDataPercentage) or: [scaledXValue <= self class highlightedDataPercentage])
		ifTrue: [ borderWidth := borderWidth + 1. color := self valueLowerPercentColor.].	
	((scaledYValue >= (1 - self class highlightedDataPercentage)) or: [scaledXValue >= (1 - self class highlightedDataPercentage)])
		ifTrue: [ borderWidth := borderWidth + 1. color := self valueHigherPercentColor.].	
			
	(borderWidth >= 2) ifTrue: [color := self valueHigherLowerPercentColor].
	
	^  BorderStyle width: borderWidth color: color