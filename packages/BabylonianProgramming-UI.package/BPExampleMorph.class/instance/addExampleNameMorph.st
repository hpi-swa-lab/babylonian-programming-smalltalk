private - ui
addExampleNameMorph

	| model nameTextMorph |
	model := BPStringValueModel new
		string: self example exampleName asText;
		onChangeBlock: [:str | 
			self annotation exampleName: str.
			self example exampleName: str.
			self exampleContentChanged];
		yourself.
	nameTextMorph := self editFieldFor: model text: #string onChange: #string:.
	nameTextMorph setTextColor: example color.
	self addMorphBack: nameTextMorph.