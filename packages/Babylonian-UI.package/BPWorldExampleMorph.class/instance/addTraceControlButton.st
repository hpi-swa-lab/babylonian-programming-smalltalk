private - ui
addTraceControlButton

	| label |
	label := (self example isTracing ifTrue: [self stopTracingLabel] ifFalse: [self startTracingLabel]).
	traceControlButton := SimpleButtonMorph newWithLabel: label.
	traceControlButton 
		color: Color transparent;
		borderWidth: 0;
		extent: traceControlButton extent * (1@0.8);
		name: #traceControlButton.
	traceControlButton 
		actionSelector: #traceControlButtonClicked;
		target: self;
		when: #updateLabelGraphic
		send: #label:
		to: traceControlButton
		withArguments:  {label}.
	exampleSpecificMorphs addMorphBack:  traceControlButton.