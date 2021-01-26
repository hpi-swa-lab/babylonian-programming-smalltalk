private - ui
addExampleNameMorph
	
	nameTextMorph := self 
		editFieldInitialContent: self example exampleName asText
		onChange: [:str | 
			self annotation exampleName: str.
			self example exampleName: str.
			self codeContentChanged]
		onAccept: [:str | "nop"].
	nameTextMorph 
		setTextColor: example color;
		width: 15 * self fontWidth;
		hideScrollBarsIndefinitely.
	self addMorphBack: nameTextMorph.