private
updateFrom: traces
	
	| scrollPane |
	tracesMorph removeAllMorphs.

	"Now to the results"
	self relevantTracesOf: traces do: [:t | | lineMorph valuesMorph |
		lineMorph := self ensureLineMorphFor: t.
		scrollPane := (lineMorph submorphNamed: #scrollWrapper) submorphNamed: #scrollPane.
		scrollPane scroller removeAllMorphs.
		
		valuesMorph := self newExampleLineMorph.
		(t resultsForAssertionId: self annotation id) 
			ifEmpty: [lineMorph addMorphBack: ToolIcons testGray asMorph]
			ifNotEmpty: [:results |
				results do: [:result | | iconMorph |
					iconMorph := (result tracedValue ifTrue: [ToolIcons testGreen] ifFalse: [ToolIcons testOrange]) asMorph.
					valuesMorph addMorphBack: iconMorph]].
			
		"The following is necessary to determine the actual width of the morph
		after it wrapped around its submorphs"
		valuesMorph layoutChanged; fullBounds.
		
		scrollPane scroller addMorph: valuesMorph.
		scrollPane height: valuesMorph height + self scrollBarSize].
	