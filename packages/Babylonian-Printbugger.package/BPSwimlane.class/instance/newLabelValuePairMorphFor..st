private - ui
newLabelValuePairMorphFor: aTraceValue

	| labelMorph valueMorph isTraceValueVisible |
	isTraceValueVisible := self isTraceValueVisible: aTraceValue.
	labelMorph := BPLabelMorph 
					newFor: aTraceValue 
					withButton: (self newToggleAnnotationVisibilityButtonFor: aTraceValue isVisible: isTraceValueVisible).
	valueMorph := self newValueMorphFor: aTraceValue.
	
	isTraceValueVisible 
		ifFalse: [
			valueMorph hide.
			labelMorph downsized].
	
	"flash the label if the belonging annotation just got its visibility toggled in the printbugger"	
	((annotationIdToFlash ~= nil) and: (annotationIdToFlash = aTraceValue belongingAnnotationId)) 
		ifTrue: [[labelMorph flash] fork].
				
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