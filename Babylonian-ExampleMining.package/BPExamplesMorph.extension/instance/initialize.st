*Babylonian-ExampleMining-Core-override
initialize
	
	super initialize.

	self 
		color: Color transparent;
		borderWidth: (PluggableButtonMorph basicNew userInterfaceTheme borderWidth);
		borderColor: self class textColor. 
		
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
		addCreateExampleButtonLabeled: '| add referencing example' selector: #addReferencingExampleButtonClicked;
		addCreateExampleButtonLabeled: '| add TestCaseExample' selector: #addTestCaseExampleButtonClicked;
		addCreateExampleButtonLabeled: '| add recorded example' selector: #addRecordedExampleButtonClicked.
		
	BPExamples value addDependent: self.