visualization
rectangleColorForValue: aPoint
	
	
	(aPoint x >= 0 and: [aPoint y >= 0]) ifTrue: [^ self rectanglePosPosColor].
	(aPoint x >= 0 and: [aPoint y < 0]) ifTrue: [^ self rectanglePosNegColor].
	(aPoint x < 0 and: [aPoint y < 0]) ifTrue: [^ self rectangleNegNegColor].
	(aPoint x < 0 and: [aPoint y >= 0]) ifTrue: [^ self rectangleNegPosColor].