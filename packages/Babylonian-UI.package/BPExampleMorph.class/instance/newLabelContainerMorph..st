private - ui
newLabelContainerMorph: aLabelString
	
	| container label |
	container := self newContainerMorph 
					cellPositioning: #topLeft;
					hResizing: #spaceFill;
					yourself.
	label := aLabelString asMorph 
			color: self class textColor;
			borderWidth: 0;
			yourself.
			
	container 
		when: #updateLabelGraphic
		send: #updateTextColorOf:
		to: self
		withArguments: {label}.
	container addMorphBack: label.
	^ container