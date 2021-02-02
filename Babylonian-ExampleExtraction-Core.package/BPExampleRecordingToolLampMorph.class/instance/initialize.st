initialization
initialize
	
	super initialize.
	
	self lamp: (CircleMorph new
		hResizing: #spaceFill;
		vResizing: #spaceFill;
		yourself).
	
	self
		color: Color transparent;
		layoutPolicy: TableLayout new;
		addMorph: self lamp;
		lampOff