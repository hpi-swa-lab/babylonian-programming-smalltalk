private
valuesTextFor: trace

	| values |
	trace exampleErrored ifTrue: [
		^ 'Error during execution: ' , trace recordedException printString].
	values := trace valuesForProbeId: self id.
	values ifEmpty: [^ self noValuesText].
	^ Text streamContents: [:str | values 
			do: [:v | str << (self valueTextFor: v)]
			separatedBy: [str << ', ' asText]]