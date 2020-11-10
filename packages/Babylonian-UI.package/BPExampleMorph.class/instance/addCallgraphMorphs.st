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
		label: 'view in sidebar';
		target: self;
		actionSelector: #viewInSidebar
		yourself).