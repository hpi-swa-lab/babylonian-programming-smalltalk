private - ui
newExampleSelectionFieldMorph

	^ BPSelectFieldMorph new
		optionsBlock: [
			{BPExampleSpecificScript allExamplesName} , 
			(SystemNavigation default allExamples collect: [:anExample | anExample uniqueIdentifier])];
		model: (BPObjectValueModel new
			object: (self annotation ifNotNil: [:anAnnotation | anAnnotation exampleName] ifNil: ['']);
			onChangeBlock: [:exampleName | 
				self annotation exampleName: exampleName.
				self codeContentChanged]);
		yourself.