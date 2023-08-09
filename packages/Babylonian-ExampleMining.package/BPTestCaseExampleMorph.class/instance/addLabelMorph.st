private - ui
addLabelMorph

	| labelButton |
	labelButton := SimpleButtonMorph newWithLabel: self labelString.
	
	labelButton 
		color: Color transparent;
		borderWidth: 0;
		extent: labelButton extent * (1@0.8);
		name: #traceControlButton;
		actionSelector: #browseMethod;
		target: self example;
		when: #updateLabelGraphic
		send: #label:
		to: labelButton
		withArguments:  {self labelString}.

	exampleSpecificMorphs addMorphBack: labelButton