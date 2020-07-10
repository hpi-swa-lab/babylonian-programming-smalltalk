private
valuesTextFor: trace

	| values |
	values := trace valuesForProbeId: self id.
	values ifEmpty: [^ self noValuesText].
	^ Text streamContents: [:str | values 
			do: [:v | str << (self valueTextFor: v)]
			separatedBy: [str << ', ' asText]]