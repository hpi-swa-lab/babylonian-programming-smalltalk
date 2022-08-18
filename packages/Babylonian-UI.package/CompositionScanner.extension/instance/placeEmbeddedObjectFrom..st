*Babylonian-UI
placeEmbeddedObjectFrom: aTextAttribute

	| width anchoredMorphOrForm textAnchorProperties gap objectHeight |
	anchoredMorphOrForm := aTextAttribute anchoredMorph.
	textAnchorProperties := self textAnchorPropertiesFor: anchoredMorphOrForm.
	
	textAnchorProperties anchorLayout == #document ifTrue: [^ true].
	"If it is not anchored at the document, we assume that it is inline."
	width := anchoredMorphOrForm width + textAnchorProperties horizontalPadding.
	(textAnchorProperties consumesHorizontalSpace and: [destX + width > rightMargin and: [(leftMargin + width) <= rightMargin or: [lastIndex > line first]]])
		ifTrue: ["Won't fit, but would on next line"
				^ false].
	
	"The width had to be set beforehand to determine line wrapping. 
	We can now re-use and reset it as it might not be necessary anymore. --pre"
	width := textAnchorProperties consumesHorizontalSpace 
		ifTrue: [anchoredMorphOrForm width + textAnchorProperties horizontalPadding]
		ifFalse: [0].
	destX := destX + width + kern.
	
	baseline := baseline max: 
		(self alignmentMorphOffsetFor: textAnchorProperties of: anchoredMorphOrForm) 
			+ (self baselineAdjustmentFor: textAnchorProperties).
	objectHeight := (self 
		lineHeightForMorphOfHeight: anchoredMorphOrForm height
		aligned: textAnchorProperties verticalAlignmentMorph 
		to: textAnchorProperties verticalAlignmentLine
		paddedWith: textAnchorProperties verticalPadding
		andOptionalMorphBaseline: (textAnchorProperties morphBaselineGetter 
			ifNotNil: [:getter | anchoredMorphOrForm perform: getter] ifNil: [0])).
	textAnchorProperties consumesHorizontalSpace 
		ifTrue: [lineHeight := lineHeight max: objectHeight]
		ifFalse: [
			gap := 5 "pixels".
			lineHeight := lineHeight + anchoredMorphOrForm height + gap].
	^ true