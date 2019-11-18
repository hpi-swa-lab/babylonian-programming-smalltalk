private
updateFrom: traces

	| exampleLabelMorph lineMorph removeButton exploreButton tracesMorph |
	self removeAllMorphs.
	
	tracesMorph := self newTracesMorph.
	
	self relevantTracesOf: traces do: [:t | | valuesMorph |
			lineMorph := self newExampleLineMorph.
			
			exampleLabelMorph := self newExampleLabelMorphFor: t.
			
			valuesMorph := (self valuesTextFor: t) asMorph.
			valuesMorph lock.
			valuesMorph hResizing: #shrinkWrap.
			valuesMorph width > 300
				ifTrue: [ |scrollPane|
						scrollPane := ScrollPane new.
						scrollPane scroller addMorph: valuesMorph.
						scrollPane width: 300.
						scrollPane color: Color transparent.
						scrollPane vScrollBarPolicy: #never.
						scrollPane alwaysShowHScrollBar.
						scrollPane scrollBarThickness: self scrollBarSize.
						scrollPane height: valuesMorph height + self scrollBarSize.
						valuesMorph := scrollPane.].
				
			exploreButton := IconicButton new.
			exploreButton 
				labelGraphic: (BPIcons searchIcon scaledToSize: self iconSize);
				color: Color transparent;
				borderWidth: 0;
				extent: (exploreButton extent x * 0.9)@(exploreButton extent y + self scrollBarSize).
			exploreButton 
				actionSelector: #exploreButtonClickedFor:;
				arguments: {t valuesForProbeId: self id};
				target: self.
			
			lineMorph 
				addMorphBack: exploreButton;
				addMorphBack: exampleLabelMorph;
				addMorphBack: valuesMorph.
				
			tracesMorph addMorphBack: lineMorph].
		
	self addMorphBack: tracesMorph.
		
	removeButton := self newRemoveButton.
	removeButton 
		actionSelector: #removeButtonClicked;
		target: self.
	self addMorphBack: removeButton.
		
	self owner ifNotNil: [
		"This may be called before we are actually part of a text layout"
		self owner paragraph composeAll.
		self owner updateFromParagraph]