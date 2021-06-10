private - ui
addDeleteButtonMorph
	
	| removeButton |
	removeButton := self newRemoveButton.
	removeButton 
		actionSelector: #removeButtonClicked;
		target: self;
		balloonText: 'delete the example'.
	self addMorphBack: removeButton.