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
		cellInset: 4;
		yourself.
		
	traces do: [:t | | valuesMorph |
			lineMorph := Morph new 
				color: Color transparent; 
				changeTableLayout; 
				listDirection: #leftToRight; 
				vResizing: #shrinkWrap;
				hResizing: #shrinkWrap;
				cellPositioning: #topLeft;
				cellInset: 6;
				yourself.
			
			exampleLabel :=  t example exampleName asText.
			exampleLabel addAttribute: (TextColor color: t example color).
			exampleLabelMorph := StringMorph contents: exampleLabel.
			
			valuesMorph := (self valuesTextFor: t) asMorph.
			valuesMorph width > 200
				ifTrue: [ |scrollPane|
						scrollPane := ScrollPane new.
						scrollPane scroller addMorph: valuesMorph.
						scrollPane width: 200.
						scrollPane color: Color transparent.
						scrollPane vScrollBarPolicy: #never.
						scrollPane alwaysShowHScrollBar.
						scrollPane height: valuesMorph height + scrollPane hScrollBar height.
						valuesMorph := scrollPane.].
				
			exploreButton := IconicButton new.
			exploreButton 
				labelGraphic: (BPIcons searchIcon scaledToSize: 12);
				color: Color transparent;
				borderWidth: 0;
				extent: exploreButton extent * 0.9.
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
	
	removeButton := IconicButton new.
	removeButton 
		labelGraphic: (BPIcons xIcon scaledToSize: 10);
		color: Color transparent;
		borderWidth: 0;
		extent: removeButton extent * 0.9.
	removeButton 
		actionSelector: #removeButtonClicked;
		target: self.
	self addMorph: removeButton.
		
	self owner ifNotNil: [
		"This may be called before we are actually part of a text layout"
		self owner paragraph composeAll.
		self owner updateFromParagraph]