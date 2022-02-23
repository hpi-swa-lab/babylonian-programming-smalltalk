private - ui
newLabelValuePairMorphFor: aTraceValue

	^ Morph new
		balloonText: (BPProbe 
				defaultLabelFor: aTraceValue containedMethodReference
				withExpression: aTraceValue belongingAnnotation);
		color: Color transparent;
		hResizing: #shrinkWrap;
		vResizing: #shrinkWrap;
		changeTableLayout;
		listDirection: #topToBottom;
		wrapCentering: #center;
		cellPositioning: #topLeft;
		cellInset: 0@2;
		addAllMorphsBack:  {BPLabelMorph newFor: aTraceValue in: self. self newValueMorphFor: aTraceValue};
		on: #doubleClick send: #flashAllRepresentingMorphs to: aTraceValue belongingAnnotation;
		yourself