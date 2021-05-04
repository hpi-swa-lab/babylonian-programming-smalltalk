private
updateFrom: traces
	
	| scrollPane |
	tracesMorph removeAllMorphs.

	"Now to the results"
	self relevantTracesOf: traces do: [:trace | | lineMorph valuesMorph |
		lineMorph := self ensureLineMorphFor: trace.
		scrollPane := (lineMorph submorphNamed: #scrollWrapper) submorphNamed: #scrollPane.
		scrollPane scroller removeAllMorphs.
		
		valuesMorph := self newExampleLineMorph.
		(trace resultsForAssertionId: self annotation id) 
			ifEmpty: [valuesMorph addMorphBack: ToolIcons testGray asMorph]
			ifNotEmpty: [:results | |values|
				values := self filterValues: results throughSliderForTrace: trace.
				values do: [:result | | iconMorph |
					iconMorph := (result tracedValue ifTrue: [ToolIcons testGreen] ifFalse: [ToolIcons testOrange]) asMorph.
					valuesMorph addMorphBack: iconMorph]].
			
		"The following is necessary to determine the actual width of the morph
		after it wrapped around its submorphs"
		valuesMorph layoutChanged; fullBounds.
		
		scrollPane scroller addMorph: valuesMorph.
		scrollPane height: valuesMorph height + self scrollBarSize].
	