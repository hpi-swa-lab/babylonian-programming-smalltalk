private
updateFrom: traces

	| lineMorph errorIndicatorMorph |
	self removeLinesWithoutCurrentTrace: traces.
	
	self relevantTracesOf: traces do: [:t | | valuesMorph scrollPane |
			lineMorph := self ensureLineMorphFor: t.
			scrollPane := lineMorph submorphNamed: #scrollPane.

			errorIndicatorMorph := nil.
			"t exampleErrored 
				ifTrue: [errorIndicatorMorph := self createErrorIndicatorFor: t]
				ifFalse: [errorIndicatorMorph := nil]."

			scrollPane scroller removeAllMorphs.				
			valuesMorph := (self valuesTextFor: t) asMorph.
			valuesMorph lock.
			valuesMorph hResizing: #shrinkWrap.
			scrollPane scroller addMorph: valuesMorph].
		
	self owner ifNotNil: [
		"This may be called before we are actually part of a text layout"
		self owner paragraph composeAll.
		self owner updateFromParagraph]