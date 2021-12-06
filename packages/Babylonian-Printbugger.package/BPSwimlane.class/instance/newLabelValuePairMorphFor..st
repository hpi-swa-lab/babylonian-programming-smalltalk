private - ui
newLabelValuePairMorphFor: aTraceValue

	^ Morph new
		color: Color transparent;
		hResizing: #shrinkWrap;
		vResizing: #shrinkWrap;
		changeTableLayout;
		listDirection: #topToBottom;
		wrapCentering: #center;
		cellPositioning: #topLeft;
		cellInset: 0@2;
		addAllMorphsBack:  {self newLabelMorphFor: aTraceValue. self newValueMorphFor: aTraceValue};
		yourself