initialization
initialize
	
	super initialize.

	self 
		color: Color transparent;
		borderWidth: 1;
		borderColor: Color veryLightGray. 
		
	self
		changeTableLayout;
		listDirection: #topToBottom;
		cellInset: 1.
		
	self addCollapsedExamplesMorph.
		
	self 
		addButtonBar;
		addCreateExampleButtonLabeled: 'add example' selector: #addExampleButtonClicked;
		addCreateExampleButtonLabeled: '| add script example' selector: #addScriptExampleButtonClicked;
		addCreateExampleButtonLabeled: '| add extracted example (from test)' selector: #addExtractedFromTestExampleButtonClicked;
		addCreateExampleButtonLabeled: '| add extracted example (from class)' selector: #addExtractedFromClassExampleButtonClicked;
		addCreateExampleButtonLabeled: '| add recorded example' selector: #addRecordedExampleButtonClicked