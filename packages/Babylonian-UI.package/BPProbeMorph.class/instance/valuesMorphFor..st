private
valuesMorphFor: trace
	
	| values valuesContainer |
	values := trace valuesForProbeId: self id.
	values ifEmpty: [^ (self noValuesTextFor: trace) asMorph].
	values first traceHasFailedBefore ifTrue: [^ (self exceptionTextFor: trace) asMorph].
	
	values := self filterValues: values throughSliderForTrace: trace.
	values ifEmpty: [^ (self noValuesTextFor: trace) asMorph].
	
	valuesContainer := self newContainerMorph.
	values 
		do: [:v | valuesContainer addMorphBack: (self valueMorphFor: v)]
		separatedBy: [valuesContainer addMorphBack: ', ' asMorph].
	
	^ valuesContainer