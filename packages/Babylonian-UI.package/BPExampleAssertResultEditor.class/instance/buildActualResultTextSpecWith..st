toolbuilder
buildActualResultTextSpecWith: aBuilder

	^ aBuilder pluggableButtonSpec new
		model: self;
		label: #actualResult;
		name: #actual;
		action: #actualResultButtonPressed;
		frame: (LayoutFrame new
			leftFraction: 0 offset: 0;
			topFraction: 0.8 offset: 0;
			rightFraction: 1 offset: 0;
			bottomFraction: 1 offset: 0);
		yourself