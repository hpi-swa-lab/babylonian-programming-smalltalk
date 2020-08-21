private
updateFrom: traces

	| lineMorph errorIndicatorMorph |
	self removeLinesWithoutCurrentTrace: traces.
	
	self relevantTracesOf: traces do: [:t | | valuesMorph scrollPane |
			lineMorph := self ensureLineMorphFor: t.
			scrollPane := lineMorph submorphNamed: #scrollPane.
			errorIndicatorMorph := lineMorph submorphNamed: #errorIndicatorHolder.
			
			t exampleErrored 
				ifTrue: [errorIndicatorMorph addMorph: (self createErrorIndicatorFor: t)]
				ifFalse: [errorIndicatorMorph 
							removeAllMorphs;
							extent: 0@0].

			scrollPane scroller removeAllMorphs.				
		
			valuesMorph := (self valuesTextFor: t) asMorph.
			valuesMorph lock.
			valuesMorph hResizing: #shrinkWrap.
		
			scrollPane scroller addMorph: valuesMorph.
			scrollPane height: valuesMorph height + self scrollBarSize].
		
	self owner ifNotNil: [
		"This may be called before we are actually part of a text layout"
		self owner paragraph composeAll.
		self owner updateFromParagraph]