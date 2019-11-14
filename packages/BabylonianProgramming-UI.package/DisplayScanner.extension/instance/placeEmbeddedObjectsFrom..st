*BabylonianProgramming-UI
placeEmbeddedObjectsFrom: textAttributes
	| currentYPosition width |
	textAttributes size > 1 
		ifTrue: ["We fake the layouting by creating an intermediate morph"
			currentYPosition := lineY + line baseline.
			textAttributes do: [:attribute | 
				attribute anchoredMorph setPositionFromLayout: (destX@currentYPosition) - morphicOffset.
				currentYPosition := currentYPosition + attribute anchoredMorph height].
			width := (textAttributes collect: [:attribute | attribute anchoredMorph width]) max.
			destX := destX + width + kern.]
		ifFalse: ["This is the base system case"
			super placeEmbeddedObjectsFrom: textAttributes]
		
	