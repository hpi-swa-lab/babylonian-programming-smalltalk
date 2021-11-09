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
		addCreateExampleButtonLabeled: '| add script example' selector: #addScriptExampleButtonClicked;
		addCreateExampleButtonLabeled: '| add TestCaseExample' selector: #addTestCaseExampleButtonClicked;
		addCreateExampleButtonLabeled: '| add recorded example' selector: #addRecordedExampleButtonClicked.
		
	BPExamples value addDependent: self.