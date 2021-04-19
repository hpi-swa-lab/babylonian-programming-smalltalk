visualization
datapointColorForValue: aValue
	
	
	| scaledValue |
	scaledValue := self scaleY scaleBehavior value: self scaleY domain value: aValue.
	(scaledValue <= self class highlightedDataPercentage) ifTrue: [^ self datapointLowerPercentColor].
	(scaledValue >= (1 - self class highlightedDataPercentage)) ifTrue: [^ self datapointHigherPercentColor].
	^ self datapointDefaultColor