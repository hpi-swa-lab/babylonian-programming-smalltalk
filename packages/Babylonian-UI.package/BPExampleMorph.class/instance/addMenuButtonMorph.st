private - ui
addMenuButtonMorph

	| menuButton |
	menuButton := self newMenuButton.
	menuButton 
		actionSelector: #offerMenuContent;
		target: self;
		balloonText: 'open the action menu'.
	self addMorphBack: menuButton.