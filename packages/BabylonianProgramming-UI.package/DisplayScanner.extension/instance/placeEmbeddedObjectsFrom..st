*BabylonianProgramming-UI
placeEmbeddedObjectsFrom: textAttributes
	| currentYPosition |
	textAttributes size > 1 
		ifTrue: ["We fake the layouting by creating an intermediate morph"
			currentYPosition := lineY + line baseline.
			textAttributes do: [:attribute | 
				attribute anchoredMorph setPositionFromLayout: (destX@currentYPosition) - morphicOffset.
				currentYPosition := currentYPosition + attribute anchoredMorph height]]
		ifFalse: ["This is the base system case"
			super placeEmbeddedObjectsFrom: textAttributes]
		
	