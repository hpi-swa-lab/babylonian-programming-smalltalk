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
		
	self addCreateExampleButton.