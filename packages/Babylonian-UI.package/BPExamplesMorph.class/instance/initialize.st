initialization
initialize
	
	super initialize.

	self 
		color: Color transparent;
		borderWidth: 1;
		borderColor: Color lightGray.
		
	self
		changeTableLayout;
		listDirection: #topToBottom;
		cellInset: 1.
		
	self addCreateExampleButton.