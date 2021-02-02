tool builder
buildWith: aBuilder
	
	| setUpTextSpec tearDownTextSpec windowSpec |
	windowSpec := aBuilder pluggableWindowSpec new
		model: self;
		label: #windowLabel;
		children: OrderedCollection new.
		
	setUpTextSpec := aBuilder pluggableTextSpec new
		model: self;
		indicateUnacceptedChanges: true;
		getText: #setUpScript;
		setText: #setUpScript:;
		name: #setUp;
		frame: (LayoutFrame new
			leftFraction: 0 offset: 0;
			topFraction: 0 offset: 0;
			rightFraction: 1 offset: 0;
			bottomFraction: 0.5 offset: 0);
		yourself.	
	windowSpec children add: setUpTextSpec.
	
	tearDownTextSpec := aBuilder pluggableTextSpec new
		model: self;
		indicateUnacceptedChanges: true;
		getText: #tearDownScript;
		setText: #tearDownScript:;
		name: #tearDown;
		frame: (LayoutFrame new
			leftFraction: 0 offset: 0;
			topFraction: 0.5 offset: 0;
			rightFraction: 1 offset: 0;
			bottomFraction: 1 offset: 0);
		yourself.	
	windowSpec children add: tearDownTextSpec.
	
	^ aBuilder build: windowSpec