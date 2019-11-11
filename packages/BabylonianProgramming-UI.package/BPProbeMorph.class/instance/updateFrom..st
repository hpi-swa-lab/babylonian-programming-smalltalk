private
updateFrom: traces

	| exampleLabel exampleLabelMorph lineMorph removeButton exploreButton examplesMorph |
	self removeAllMorphs.
	
	examplesMorph := Morph new
		color: Color transparent;
		changeTableLayout;
		listDirection: #topToBottom; 
		vResizing: #shrinkWrap;
		hResizing: #shrinkWrap;
		cellPositioning: #topLeft;
		layoutInset: 1;
		yourself.
		
	(traces select: [:trace | (trace valuesForProbeId: self id) notEmpty]) do: [:t | | valuesMorph |
			lineMorph := Morph new 
				color: Color transparent; 
				changeTableLayout; 
				layoutInset: 0;
				listDirection: #leftToRight; 
				vResizing: #shrinkWrap;
				hResizing: #shrinkWrap;
				cellPositioning: #leftCenter;
				cellGap: 1;
				name: 'example line';
				yourself.
			
			exampleLabel :=  t example exampleName asText.
			exampleLabelMorph := StringMorph contents: exampleLabel.
			exampleLabelMorph color: t example color.
			
			valuesMorph := (self valuesTextFor: t) asMorph.
			valuesMorph lock.
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
				
			examplesMorph addMorphBack: lineMorph].
		
	self addMorphBack: examplesMorph.
		
	removeButton := self newRemoveButton.
	removeButton 
		actionSelector: #removeButtonClicked;
		target: self.
	self addMorphBack: removeButton.
		
	self owner ifNotNil: [
		"This may be called before we are actually part of a text layout"
		self owner paragraph composeAll.
		self owner updateFromParagraph]