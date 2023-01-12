as yet unclassified
buildSelectionButtonWith: aBuilder

	^ aBuilder pluggableButtonSpec new
		model: self;
		label: 'reference selected example';
		action: #selectionButtonClicked;
		yourself