*BabylonianProgramming-UI
placeEmbeddedObjectsFrom: textAttributes
	textAttributes size > 1 
		ifTrue: ["We fake the layouting by creating an intermediate morph"
			lineHeight := font height + (textAttributes collect: [:attribute | attribute anchoredMorph height]) sum.
			^ true]
		ifFalse: ["This is the base system case"
			^ super placeEmbeddedObjectsFrom: textAttributes]
		
	