private
updateFrom: traces

	| exampleLabel exampleLabelMorph lineMorph removeButton exploreButton examplesMorph |
	self removeAllMorphs.
	
	removeButton := IconicButton new.
	removeButton 
		labelGraphic: (BPIcons xIcon scaledToSize: self iconSize * 0.8);
		color: Color transparent;
		borderWidth: 0;
		extent: removeButton extent * 0.8.
	removeButton 
		actionSelector: #removeButtonClicked;
		target: self.
	self addMorph: removeButton.
	
	examplesMorph := Morph new
		color: Color transparent;
		changeTableLayout;
		listDirection: #topToBottom; 
		vResizing: #shrinkWrap;
		hResizing: #shrinkWrap;
		cellPositioning: #topLeft;
		layoutInset: 1;
		yourself.
		
	traces do: [:t | | valuesMorph |
			lineMorph := Morph new 
				color: Color transparent; 
				changeTableLayout; 
				layoutInset: 0;
				listDirection: #leftToRight; 
				vResizing: #shrinkWrap;
				hResizing: #shrinkWrap;
				cellPositioning: #leftCenter;
				cellInset: 4;
				yourself.
			
			exampleLabel :=  t example exampleName asText.
			exampleLabel addAttribute: (TextColor color: t example color).
			exampleLabelMorph := StringMorph contents: exampleLabel.
			
			valuesMorph := (self valuesTextFor: t) asMorph.
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
				addMorph: valuesMorph;
				addMorph: exampleLabelMorph;
				addMorph: exploreButton.
				
			examplesMorph addMorph: lineMorph].
		
	self addMorph: examplesMorph.
		
	self owner ifNotNil: [
		"This may be called before we are actually part of a text layout"
		self owner paragraph composeAll.
		self owner updateFromParagraph]