initialization
addLabelMorph
	
	(self selectedObject isNil or: [self selectedObject = BPExampleSpecificScript allExamplesName])
		ifTrue: [super addLabelMorph]
		ifFalse: [
			labelMorph := self newExampleLabelMorphFor: self selectedObject.
			self addMorphBack: labelMorph]