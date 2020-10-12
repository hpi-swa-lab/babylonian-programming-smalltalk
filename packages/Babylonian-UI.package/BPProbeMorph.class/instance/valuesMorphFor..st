private
valuesMorphFor: trace
	
	| values valuesContainer |
	values := trace valuesForProbeId: self id.
	values first traceHasFailedBefore ifTrue: [
		^ 'Error during execution: ' , trace recordedException printString].
	
	values := self filterValues: values throughSliderForTrace: trace.
	values ifEmpty: [^ self noValuesText].
	
	valuesContainer := self newContainerMorph.
	values 
		do: [:v | valuesContainer addMorphBack: (self valueMorphFor: v)]
		separatedBy: [valuesContainer addMorphBack: ', ' asMorph].
	
	^ valuesContainer