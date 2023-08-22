private - ui
editFieldFor: model text: getTextSelector onChange: setTextSelector onAccept: acceptTextSelector
	
	| pluggableTextMorph | 
	pluggableTextMorph := PluggableTextMorphPlus
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
		layoutInset: 0.
	^ pluggableTextMorph