private - ui
addExampleNameMorph
	
	| nameTextMorph |
	nameTextMorph := self 
		editFieldInitialContent: self example exampleName asText
		onChange: [:str | 
			self annotation exampleName: str.
			self example exampleName: str.
			self codeContentChanged]
		onAccept: [:str | "nop"].
	nameTextMorph setTextColor: example color.
	nameTextMorph width: 15 * self fontWidth.
	self addMorphBack: nameTextMorph.