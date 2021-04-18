visualization
datapointColorForValue: aValue
	
	
	| scaledValue |
	scaledValue := self scaleY scaleBehavior value: self scaleY domain value: aValue.
	(scaledValue <= 0.1) ifTrue: [^ self datapointLowerPercentColor].
	(scaledValue >= 0.9) ifTrue: [^ self datapointHigherPercentColor].
	^ self datapointDefaultColor