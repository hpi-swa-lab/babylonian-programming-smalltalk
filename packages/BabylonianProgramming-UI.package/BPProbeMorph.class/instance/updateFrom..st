stepping and presenter
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
				cellInset: 6;
				yourself.
			
			exampleLabel :=  t example exampleName asText.
			exampleLabel addAttribute: (TextColor color: t example color).
			exampleLabelMorph := StringMorph contents: exampleLabel.
			
			valuesMorph := (((t valuesForProbeId: self id) collect: [:v | v tracedValue]) joinSeparatedBy: ', ') asText asMorph.
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
				labelGraphic: UiFugueIcons magnifierIcon;
				color: Color transparent;
				borderWidth: 0;
				extent: exploreButton extent * 0.9.
			exploreButton 
				actionSelector: #exploreButtonClicked;
				target: self.
			
			lineMorph 
				addMorph: valuesMorph;
				addMorph: exampleLabelMorph;
				addMorph: exploreButton.
				
			examplesMorph addMorph: lineMorph].
		
	self addMorph: examplesMorph.
	
	removeButton := SimpleButtonMorph newWithLabel: ('x' asText addAttribute: TextColor white; yourself).
			removeButton 
				color: Color lightRed; 
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