private - ui
addActivationButtonMorph

	| checkbox |
	checkbox := UpdatingThreePhaseButtonMorph checkBox.
	self addMorphBack: (checkbox 
		target: self;
		getSelector: #isExampleActive;
		actionSelector: #activateExampleButtonClicked;
		yourself).