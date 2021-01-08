initialization
addLabelMorph
	
	"super addLabelMorph."
	self selectedObject isNil
		ifTrue: [super addLabelMorph]
		ifFalse: [
			labelMorph := self newExampleLabelMorphFor: self selectedObject.
			self addMorphBack: labelMorph]