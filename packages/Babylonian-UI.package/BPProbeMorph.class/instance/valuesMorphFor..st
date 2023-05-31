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
		do: [:v | valuesContainer addMorphBack: (self valueMorphFor: v)]
		separatedBy: [valuesContainer addMorphBack: (', ' asMorph
						color: self class textColor;
						yourself)].
	
	^ valuesContainer