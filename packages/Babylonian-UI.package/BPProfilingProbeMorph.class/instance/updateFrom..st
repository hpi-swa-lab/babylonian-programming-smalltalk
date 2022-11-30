private
updateFrom: traces
	
	| scrollPane average count range |
	tracesMorph removeAllMorphs.
	
	"Now to the results"
	self relevantTracesOf: traces do: [:trace | | lineMorph valuesMorph |
		lineMorph := self ensureLineMorphFor: trace.
		scrollPane := (lineMorph submorphNamed: #scrollWrapper) submorphNamed: #scrollPane.
		scrollPane scroller removeAllMorphs.
		
		valuesMorph := self newExampleLineMorph.
		(trace valuesForProbeId: self annotation id) 
			ifEmpty: [valuesMorph addMorphBack: (self noValuesTextFor: trace) asMorph]
			ifNotEmpty: [:results | |values times|
				values := self filterValues: results throughSliderForTrace: trace.
				times := values collect: [:v | v tracedValue].
				count := times size.
				average := times average.
				range := times range.
				valuesMorph addMorphBack: ('{1} executions ({2} ms +/- {3})' format: {count . average . range}) asText asMorph].
			
		"The following is necessary to determine the actual width of the morph
		after it wrapped around its submorphs"
		valuesMorph layoutChanged; fullBounds.
		
		scrollPane scroller addMorph: valuesMorph.
		scrollPane height: valuesMorph height + self scrollBarSize].
	