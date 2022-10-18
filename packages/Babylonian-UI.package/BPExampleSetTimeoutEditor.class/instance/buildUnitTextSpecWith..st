toolbuilder
buildUnitTextSpecWith: aBuilder

	^ aBuilder pluggableInputFieldSpec new
		model: self;
		getText: #unitText;
		name: #unit;
		readOnly: true;
		indicateUnacceptedChanges: false;
		plainTextOnly: true;
		frame: (LayoutFrame new
			leftFraction: 0.9 offset: 0;
			topFraction: 0 offset: 0;
			rightFraction: 1 offset: 0;
			bottomFraction: 1 offset: 0);
		yourself