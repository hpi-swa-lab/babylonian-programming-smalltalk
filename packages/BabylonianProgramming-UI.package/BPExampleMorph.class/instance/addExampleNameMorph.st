private - ui
addExampleNameMorph

	| exampleNameText pluggableTextMorph |
	exampleNameText := self example exampleName asText.
	exampleNameText addAttribute: (TextColor color: self example color).	
	pluggableTextMorph := (PluggableTextMorph 
		on: self example
		text: #exampleName
		accept: #exampleName:).
	pluggableTextMorph 
		color: Color transparent;
		setTextColor: self example color;
		editTextSelector: #exampleName:;
		vResizing: #shrinkWrap;
		hResizing: #shrinkWrap;
		wantsFrameAdornments: false;
		height: self fontHeight.
	self addMorphBack: pluggableTextMorph.