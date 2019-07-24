private - ui
addExampleNameMorph

	| exampleNameText field |
	exampleNameText := self example exampleName asText.
	exampleNameText addAttribute: (TextColor color: self example color).	
	field := (self editFieldFor: example text: #exampleName onChange: #exampleName:).
	field setTextColor: example color.
	self addMorphBack: field.