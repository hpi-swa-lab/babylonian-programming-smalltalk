private - ui
newLabelValuePairMorph

	| labelMorph valueMorph |
	labelMorph := BPLabelMorph 
					newFor: traceValue 
					in: containingSwimlane
					withButton: (self newToggleAnnotationVisibilityButtonWithVisibility: self isTraceValueVisible).
	valueMorph := self newValueMorph.
	
	self isTraceValueVisible
		ifFalse: [
			valueMorph hide.
			labelMorph downsized].
		
	"flash the label if the belonging annotation just got its visibility toggled in the ProbeLog"	
	((context annotationIdToFlash ~= nil) and: (context annotationIdToFlash = traceValue belongingAnnotationId)) 
		ifTrue: [[labelMorph flash] fork].
				
	^ Morph new
		balloonText: (BPProbe 
			defaultLabelFor: traceValue containedMethodReference
			withExpression: traceValue belongingAnnotation enclosedExpressionSource);
		color: Color transparent;
		hResizing: #shrinkWrap;
		vResizing: #shrinkWrap;
		changeTableLayout;
		listDirection: #topToBottom;
		wrapCentering: #center;
		cellPositioning: #topLeft;
		cellInset: 0@2;
		addAllMorphsBack:  {labelMorph. valueMorph};
		on: #doubleClick send: #flashAllRepresentingMorphs to: traceValue belongingAnnotation;
		yourself