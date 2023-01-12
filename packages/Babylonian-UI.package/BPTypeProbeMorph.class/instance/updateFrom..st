private
updateFrom: traces
	
	| scrollPane classes classNames |
	tracesMorph removeAllMorphs.
	
	"Now to the results"
	self relevantTracesOf: traces do: [:trace | | lineMorph valuesMorph |
		lineMorph := self ensureLineMorphFor: trace.
		scrollPane := (lineMorph submorphNamed: #scrollWrapper) submorphNamed: #scrollPane.
		scrollPane scroller removeAllMorphs.
		
		valuesMorph := self newExampleLineMorph.
		(trace valuesForProbeId: self annotation id) 
			ifEmpty: [valuesMorph addMorphBack: (self noValuesTextFor: trace) asMorph.]
			ifNotEmpty: [:results | |values|
				values := self filterValues: results throughSliderForTrace: trace.
				classes := values collect: [:v | v tracedValue] as: Set.
				classNames := classes collect: [:class | class externalName].
				valuesMorph addMorphBack: (classNames asArray joinSeparatedBy: ', ') asText asMorph].
			
		"The following is necessary to determine the actual width of the morph
		after it wrapped around its submorphs"
		valuesMorph layoutChanged; fullBounds.
		
		scrollPane scroller addMorph: valuesMorph.
		scrollPane height: valuesMorph height + self scrollBarSize].
	