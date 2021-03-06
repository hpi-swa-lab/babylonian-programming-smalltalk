initialization
initialize
	
	super initialize.

	self 
		color: Color transparent;
		borderWidth: 1;
		borderColor: Color veryLightGray. 
		
	self
		changeTableLayout;
		hResizing: #rigid;
		listDirection: #topToBottom;
		cellInset: 1.
		
	self addCollapsedExamplesMorph.
		
	self 
		addButtonBar;
		addCreateExampleButtonLabeled: 'add example' selector: #addExampleButtonClicked;
		addCreateExampleButtonLabeled: '| add script example' selector: #addScriptExampleButtonClicked.
		
	BPExamples value addDependent: self.