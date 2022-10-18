toolbuilder
buildTimeoutTextSpecWith: aBuilder

	^ aBuilder pluggableInputFieldSpec new
		model: self;
		indicateUnacceptedChanges: true;
		getText: #timeout;
		setText: #timeout:;
		name: #timeout;
		stylerClass: SHTextStylerST80;
		frame: (LayoutFrame new
			leftFraction: 0 offset: 0;
			topFraction: 0 offset: 0;
			rightFraction: 0.9 offset: 0;
			bottomFraction: 1 offset: 0);
		yourself