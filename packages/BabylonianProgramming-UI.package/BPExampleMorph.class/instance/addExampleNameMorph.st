private - ui
addExampleNameMorph

	| exampleNameText |
	exampleNameText := self example exampleName asText.
	exampleNameText addAttribute: (TextColor color: self example color).	
	self addMorphBack: exampleNameText asMorph.