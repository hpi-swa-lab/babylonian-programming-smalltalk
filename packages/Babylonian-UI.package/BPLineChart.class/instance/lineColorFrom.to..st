visualization
lineColorFrom: aPoint1 to: aPoint2
	
	
	^ (aPoint1 y >= aPoint2 y) 
		ifTrue: [self datapointHigherPercentColor]
		ifFalse: [self datapointLowerPercentColor]