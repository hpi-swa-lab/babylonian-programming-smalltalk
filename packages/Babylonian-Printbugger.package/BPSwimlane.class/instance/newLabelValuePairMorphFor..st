private - ui
newLabelValuePairMorphFor: aTraceValue

	| isTraceValueIgnored labelMorph valueMorph |
	isTraceValueIgnored := ((context ignoredAnnotationsOf: example) includes: (aTraceValue belongingAnnotationId)).
	labelMorph := BPLabelMorph newFor: aTraceValue withButton: (self newToggleAnnotationVisibilityButtonFor: aTraceValue isVisible: isTraceValueIgnored not).
	valueMorph := self newValueMorphFor: aTraceValue.
	isTraceValueIgnored
		ifTrue: [valueMorph hide].
	^ Morph new
		color: Color transparent;
		hResizing: #shrinkWrap;
		vResizing: #shrinkWrap;
		changeTableLayout;
		listDirection: #topToBottom;
		wrapCentering: #center;
		cellPositioning: #topLeft;
		cellInset: 0@2;
		addAllMorphsBack:  {labelMorph. valueMorph};
		yourself