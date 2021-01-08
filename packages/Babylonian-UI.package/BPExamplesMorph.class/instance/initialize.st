initialization
initialize
	
	super initialize.

	self 
		color: Color transparent;
		borderWidth: 1;
		borderColor: Color veryLightGray. 
		
	self
		changeTableLayout;
		cellInset: 1.
		
	BPStyler withoutSidebarAnnotations: [
		self
			hResizing: #rigid;
			listDirection: #leftToRight;
			wrapDirection: #topToBottom].
		
	self 
		addButtonBar;
		addCreateExampleButtonLabeled: 'add example' selector: #addExampleButtonClicked;
		addCreateExampleButtonLabeled: '| add script example' selector: #addScriptExampleButtonClicked.