private - ui
addTraceControlButton

	traceControlButton := SimpleButtonMorph newWithLabel: 'start recording'.
	traceControlButton 
		color: Color transparent;
		borderWidth: 0;
		extent: traceControlButton extent * 0.7;
		name: #traceControlButton.
	traceControlButton 
		actionSelector: #traceControlButtonClicked;
		target: self.
	self addMorphBack: traceControlButton.