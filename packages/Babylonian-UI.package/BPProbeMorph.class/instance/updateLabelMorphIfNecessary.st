private - ui
updateLabelMorphIfNecessary
	
	| labelBox |
	labelBox := self ensureInputBoxNamed: #labelBox atFront: true.

	self annotation hasLabel 
		ifTrue: [
			addLabelMorph ifNotNil: [:aMorph | aMorph abandon].
			labelMorph ifNil: [
				labelMorph := self newLabelMorph].
			labelBox addMorphBack: labelMorph]
		ifFalse: [
			labelMorph ifNotNil: [:aMorph | aMorph abandon].
			addLabelMorph ifNil: [
				addLabelMorph := self newButtonMorphWithLabel: 'set label' doOnClick: #setLabelButtonClicked].
			labelBox addMorphBack: addLabelMorph].