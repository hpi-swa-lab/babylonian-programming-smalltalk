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
		cellPositioning: #topLeft;
		layoutInset: 0;
		width: ((TextStyle defaultFont widthOfString: (model perform: getTextSelector)) + (self fontWidth) 
			max: (20 * self fontWidth)).
	^ pluggableTextMorph