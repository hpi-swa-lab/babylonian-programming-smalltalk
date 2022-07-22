*Babylonian-UI
placeEmbeddedObjectFrom: aTextAttribute

	| width anchoredMorphOrForm textAnchorProperties |
	anchoredMorphOrForm := aTextAttribute anchoredMorph.
	textAnchorProperties := self textAnchorPropertiesFor: anchoredMorphOrForm.
	
	textAnchorProperties anchorLayout == #document ifTrue: [^ true].
	width := textAnchorProperties consumesHorizontalSpace 
		ifTrue: [anchoredMorphOrForm width + textAnchorProperties horizontalPadding]
		ifFalse: [0].
	
	lastCharacterWidth := width.	
	
	characterPoint ifNotNil: [
		"We have to check whether we exceeded the point we are looking for" 
		(destX + width > characterPoint x) ifTrue: [^false]].
	destX := destX + width + kern.
	^ true