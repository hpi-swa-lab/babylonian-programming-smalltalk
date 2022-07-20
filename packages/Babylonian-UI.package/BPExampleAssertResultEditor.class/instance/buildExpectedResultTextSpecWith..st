toolbuilder
buildExpectedResultTextSpecWith: aBuilder

	^ aBuilder pluggableInputFieldSpec new
		model: self;
		indicateUnacceptedChanges: true;
		getText: #expectedResult;
		setText: #expectedResult:;
		name: #expected;
		stylerClass: SHTextStylerST80;
		frame: (LayoutFrame new
			leftFraction: 0 offset: 0;
			topFraction: 0 offset: 0;
			rightFraction: 1 offset: 0;
			bottomFraction: 0.8 offset: 0);
		yourself