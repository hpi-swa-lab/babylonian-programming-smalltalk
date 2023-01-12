as yet unclassified
addSelectExampleButton

	selectExampleButton := SimpleButtonMorph newWithLabel: self referencedExampleName.
	selectExampleButton 
		color: Color transparent;
		borderWidth: 0;
		extent: selectExampleButton extent  * (1@0.8);
		name: #selectExampleButton.
	selectExampleButton 
		actionSelector: #selectExampleButtonClicked;
		target: self.
	exampleSpecificMorphs addMorphBack: selectExampleButton.