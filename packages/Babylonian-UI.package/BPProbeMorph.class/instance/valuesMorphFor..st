private
valuesMorphFor: trace

	| values valuesContainer |
	values := trace valuesForProbeId: self id.
	values ifEmpty: [^ (self noValuesTextFor: trace) bpProbeValueMorphIn: nil].
	values first traceHasFailedBefore ifTrue: [
		^ (self exceptionTextFor: trace) bpProbeValueMorphIn: nil].
	
	values := self filterValues: values throughSliderForTrace: trace.
	values ifEmpty: [^ (self noValuesTextFor: trace) bpProbeValueMorphIn: nil].
	
	valuesContainer := self newContainerMorph.
	values 
		do: [:v | | borderMorph borderWrapperMorph | 
				borderWrapperMorph := self newContainerMorph.
				borderWrapperMorph 
					changeTableLayout;
					listDirection: #topToBottom.
				borderMorph := Morph new
					color: (trace pathForTraceValue: v) color;
					height: ((self fontHeight // 4) max: 4);
					hResizing: #spaceFill;
					balloonText: (trace pathForTraceValue: v) stackPrintString;
					yourself.
				borderWrapperMorph 
					addMorphFront: (self valueMorphFor: v);
					addMorphBack: borderMorph.
			valuesContainer addMorphBack: borderWrapperMorph]
		separatedBy: [valuesContainer addMorphBack: (', ' asMorph
						color: (PluggableTextMorph basicNew userInterfaceTheme textColor);
						yourself)].
	
	^ valuesContainer