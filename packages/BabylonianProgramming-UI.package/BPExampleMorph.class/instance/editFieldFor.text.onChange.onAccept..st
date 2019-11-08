private - ui
editFieldFor: model text: getTextSelector onChange: setTextSelector onAccept: acceptTextSelector

	|pluggableTextMorph| 
	pluggableTextMorph := PluggableTextMorph 
		on: model
		text: getTextSelector
		accept: acceptTextSelector.
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