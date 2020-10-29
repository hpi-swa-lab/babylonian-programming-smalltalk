private - ui
addCallgraphMorphs
	

	self addMorphBack:  (TextMorph new
		color: Color black;
		hResizing: #shrinkWrap;
		vResizing: #shrinkWrap;
		readOnly: true;
		contents: '';
		name: #duration;
		yourself).
	self addMorphBack: (SimpleButtonMorph new
		hResizing: #shrinkWrap;
		vResizing: #shrinkWrap;
		name: #contextTrace;
		label: 'view callgraph';
		target: self;
		actionSelector: #viewCallgraph
		yourself).
	self addMorphBack: (SimpleButtonMorph new
		hResizing: #shrinkWrap;
		vResizing: #shrinkWrap;
		name: #contextTrace;
		label: 'run once';
		target: self;
		actionSelector: #runOnce
		yourself).