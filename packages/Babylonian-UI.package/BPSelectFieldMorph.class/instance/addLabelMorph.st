initialization
addLabelMorph
	
	labelMorph := TextMorph string: self labelOfSelectedObject size: BPAnnotationMorph fontHeight.
	labelMorph hResizing: #shrinkWrap.
	labelMorph minWidth: 5 * self fontWidth.
	labelMorph backgroundColor: Color transparent.
	labelMorph color: BPAnnotationMorph textColor.
	labelMorph lock.
	
	self addMorphBack: labelMorph.