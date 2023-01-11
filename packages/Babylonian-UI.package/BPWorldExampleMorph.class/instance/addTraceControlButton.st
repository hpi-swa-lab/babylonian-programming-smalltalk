private - ui
addTraceControlButton

	traceControlButton := SimpleButtonMorph newWithLabel: (self example isTracing ifTrue: [self stopTracingLabel] ifFalse: [self startTracingLabel]).
	traceControlButton 
		color: Color transparent;
		borderWidth: 0;
		extent: traceControlButton extent * (1@0.8);
		name: #traceControlButton.
	traceControlButton 
		actionSelector: #traceControlButtonClicked;
		target: self.
	exampleSpecificMorphs addMorphBack:  traceControlButton.