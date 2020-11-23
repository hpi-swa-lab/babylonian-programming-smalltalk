initialization
initialize
	
	super initialize.

	self 
		color: Color transparent;
		borderWidth: 1;
		borderColor: Color veryLightGray. 
		
	self
		hResizing: #shrinkWrap;
		changeTableLayout;
		listDirection: #topToBottom;
		cellInset: 1.
		
	self 
		addButtonBar;
		addCreateExampleButtonLabeled: 'add example' selector: #addExampleButtonClicked;
		addCreateExampleButtonLabeled: '| add script example' selector: #addScriptExampleButtonClicked