private - ui
editFieldFor: model text: getTextSelector onChange: setTextSelector onAccept: acceptTextSelector
	
	| pluggableTextMorph | 
	pluggableTextMorph := PluggableTextMorph 
		on: model
		text: getTextSelector
		accept: acceptTextSelector.
	pluggableTextMorph 
		color: Color transparent;
		borderWidth: 0;
		editTextSelector: setTextSelector;
		vResizing: #shrinkWrap;
		hResizing: #rigid;
		wrapFlag: true;
		wantsFrameAdornments: false; 
		height: self fontHeight;
		layoutInset: 2;
		width: ((TextStyle defaultFont widthOfString: (model perform: getTextSelector)) + (self fontWidth) 
			max: (20 * self fontWidth)).
	^ pluggableTextMorph