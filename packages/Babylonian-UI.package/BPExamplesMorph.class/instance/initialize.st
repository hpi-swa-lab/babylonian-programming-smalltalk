initialization
initialize
	
	super initialize.

	self 
		color: Color transparent;
		borderWidth: 1;
		borderColor: Color gray.
		
	self
		changeTableLayout;
		listDirection: #topToBottom;
		cellInset: 1.