private - ui
newAddExpressionMorph
	
	
	| setExpressionButton |
	setExpressionButton := IconicButton new
		labelGraphic: ((TextMorph string: 'set expression' size: 8) textColor: Color lightGray; yourself) imageForm;
		yourself.
	
	setExpressionButton 
		color: Color transparent;
		borderWidth: 0;
		hResizing: #shrinkWrap;
		layoutInset: 1;
		extent: setExpressionButton extent * 0.8.
	
	setExpressionButton 
		target: self;
		actionSelector: #setExpressionButtonClicked. 	
	
	^ setExpressionButton