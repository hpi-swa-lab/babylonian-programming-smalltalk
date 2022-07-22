private - ui
addAssertResultButtonMorph

	| assertResultButton |
	assertResultButton := IconicButton new.
	assertResultButton
		name: #assertResultButton;
		labelGraphic: self assertResultIcon;
		balloonText: 'Assert if the example''s result matches what you would expect it to be';
		color: Color transparent;
		borderWidth: 0;
		extent: assertResultButton extent * 0.7.
	assertResultButton 
		actionSelector: #assertResultButtonClicked;
		target: self.
	self addMorphBack: assertResultButton.