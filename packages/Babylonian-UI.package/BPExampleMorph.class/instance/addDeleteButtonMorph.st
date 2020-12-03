private - ui
addDeleteButtonMorph

	| removeButton |
	removeButton := self newRemoveButton.
	removeButton 
		actionSelector: #removeButtonClicked;
		target: self.
	self addMorphBack: removeButton