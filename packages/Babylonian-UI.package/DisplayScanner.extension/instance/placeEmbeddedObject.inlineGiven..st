*Babylonian-UI
placeEmbeddedObject: anchoredMorphOrForm inlineGiven: textAnchorProperties
	
	| alignedPositionY position |
	alignedPositionY := self verticallyAlignEmbeddedObject: anchoredMorphOrForm given: textAnchorProperties.
	position := (destX + textAnchorProperties padding left) @ alignedPositionY.
	anchoredMorphOrForm isMorph
		ifTrue: [
			"We have to remove the offset passed to us from morphic as this embedded morph
			will only be rendered later on. We now only set the position. --pre"
			anchoredMorphOrForm layoutPosition: position - morphicOffset]
		ifFalse: ["we assume this to be a form"
			self displayEmbeddedForm: anchoredMorphOrForm at: position].
	