private - ui
newExampleSelectionFieldMorph
	
	^ BPExampleSelectFieldMorph new
		optionsBlock: [ 
			{BPExampleSpecificScript allExamplesName} , SystemNavigation default allExamples];
		model: (BPObjectValueModel new
			object: (self annotation ifNotNil: [:anAnnotation | anAnnotation example]);
			onChangeBlock: [:example | 
				self annotation exampleName: example uniqueIdentifier.
				self codeContentChanged]);
		yourself.