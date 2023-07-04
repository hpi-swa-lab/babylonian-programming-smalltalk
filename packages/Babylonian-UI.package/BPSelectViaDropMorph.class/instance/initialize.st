initialize-release
initialize
	| containerMorph textMorph |
	super initialize.

	self dropEnabled: true.
	
	self 
		color: self fillColor;
		borderWidth: 0;
		extent: 300@400.
		
	self 
		changeTableLayout;
		listDirection: #topToBottom.
		
	explorer := ObjectExplorer explore: nil.
	self addMorph: ((ToolBuilder build: explorer) submorphOfClass: PluggableTreeMorph).
	
	
	textMorph := (('Drop an Object here as a Live Specimen' asText asMorph)
		color: self textColor;
		centered;
		yourself).
	containerMorph := Morph new
		color: self fillColor;
		borderWidth: 0;
		hResizing: #spaceFill;
		height: 100;
		changeTableLayout;
		cellPositioning: #center;
		listCentering: #center;
		addMorph: textMorph;
		yourself.
	self addMorph: containerMorph.
	