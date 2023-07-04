initialization
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
		addCreateExampleButtonLabeled: '| add referencing example' selector: #addReferencingExampleButtonClicked.
		
	BPExamples value addDependent: self.