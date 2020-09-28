private
valuesTextFor: trace
	
	| values |
	values := trace valuesForProbeId: self id.
	values first traceHasFailedBefore ifTrue: [
		^ 'Error during execution: ' , trace recordedException printString].
	
	values := self filterValues: values throughSliderForTrace: trace.
	values ifEmpty: [
		^ self noValuesText].
	^ Text streamContents: [:str | values 
			do: [:v | str << (self valueTextFor: v)]
			separatedBy: [str << ', ' asText]]