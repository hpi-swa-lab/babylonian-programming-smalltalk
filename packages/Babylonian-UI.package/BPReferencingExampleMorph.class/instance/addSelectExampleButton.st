private - ui
addSelectExampleButton

	| labelMorph |
	selectExampleButton := SimpleButtonMorph newWithLabel: self referencedExampleName.
	labelMorph := selectExampleButton findA: StringMorph.
	labelMorph ifNotNil: [labelMorph color: self class textColor].
	exampleSpecificMorphs addMorphBack: (selectExampleButton
		color: Color transparent;
		borderWidth: 0;
		extent: selectExampleButton extent  * (1@0.8);
		name: #selectExampleButton;
		actionSelector: #selectExampleButtonClicked;
		target: self;
		when: #updateLabelGraphic
		send: #label:
		to: selectExampleButton
		withArguments:  {self referencedExampleName};
		yourself).