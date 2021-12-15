private - ui
updateLabelMorphIfNecessary

	| inputsBox |
	inputsBox := self ensureInputBoxNamed: #inputsBox atFront: false.

	self annotation hasLabel 
		ifTrue: [
			addLabelMorph ifNotNil: [:aMorph | aMorph abandon].
			labelMorph ifNil: [
				labelMorph := self newLabelMorph].
			inputsBox addMorphBack: labelMorph]
		ifFalse: [
			labelMorph ifNotNil: [:aMorph | aMorph abandon].
			addLabelMorph ifNil: [
				addLabelMorph := self newButtonMorphWithLabel: '| set label' doOnClick: #setLabelButtonClicked].
			inputsBox addMorphBack: addLabelMorph].