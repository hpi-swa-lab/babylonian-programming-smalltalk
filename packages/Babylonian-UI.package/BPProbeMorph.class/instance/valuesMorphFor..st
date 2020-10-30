private
valuesMorphFor: trace
	
	| values valuesContainer |
	values := trace valuesForProbeId: self id.
	values first traceHasFailedBefore ifTrue: [
		^ ('Error during execution: ' , trace recordedException printString) asMorph].
	
	values := self filterValues: values throughSliderForTrace: trace.
	values ifEmpty: [^ self noValuesText asMorph].
	
	valuesContainer := self newContainerMorph.
	values 
		do: [:v | valuesContainer addMorphBack: (self valueMorphFor: v trace: trace)]
		separatedBy: [valuesContainer addMorphBack: ', ' asMorph].
	
	^ valuesContainer