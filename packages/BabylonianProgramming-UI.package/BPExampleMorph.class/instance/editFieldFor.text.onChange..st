private - ui
editFieldFor: model text: getTextSelector onChange: setTextSelector

	|pluggableTextMorph| 
	pluggableTextMorph := PluggableTextMorph 
		on: model
		text: getTextSelector
		accept: setTextSelector.
	pluggableTextMorph 
		color: Color transparent;
		editTextSelector: setTextSelector;
		vResizing: #shrinkWrap;
		hResizing: #shrinkWrap;
		wantsFrameAdornments: false;
		height: self fontHeight;
		width: ((TextStyle defaultFont widthOfString: (model perform: getTextSelector)) + (self fontWidth) 
			max: (10 * self fontWidth)).
	^ pluggableTextMorph