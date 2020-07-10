initialize-release
initialize

	super initialize.

	self dropEnabled: true.
	
	self 
		color: Color white;
		borderWidth: 0;
		extent: 300@200.
		
	self 
		changeTableLayout;
		cellPositioning: #center;
		listCentering: #center;
		listDirection: #topToBottom.
	
	self addMorph: (('Drop an Object here as a Live Specimen' asText asMorph)
		hResizing: #spaceFill;
		centered;
		yourself).