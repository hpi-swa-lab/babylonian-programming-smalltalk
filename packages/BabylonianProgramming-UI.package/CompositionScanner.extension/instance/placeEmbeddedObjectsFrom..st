*BabylonianProgramming-UI
placeEmbeddedObjectsFrom: textAttributes
	| width |
	textAttributes size > 1 
		ifTrue: ["We fake the layouting by creating an intermediate morph"
			width := (textAttributes collect: [:attribute | attribute anchoredMorph width]) max.
			destX := destX + width + kern.
			lineHeight := font height + (textAttributes collect: [:attribute | attribute anchoredMorph height]) sum]
		ifFalse: ["This is the base system case"
			super placeEmbeddedObjectsFrom: textAttributes]
		
	