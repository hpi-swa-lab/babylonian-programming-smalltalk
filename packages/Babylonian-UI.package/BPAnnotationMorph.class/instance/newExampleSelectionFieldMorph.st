private - ui
newExampleSelectionFieldMorph
	
	^ BPExampleSelectFieldMorph new
		optionsBlock: [ 
			{BPExampleSpecificScript allExamplesName} , SystemNavigation default allExamples];
		model: (BPObjectValueModel new
			object: (self annotation ifNotNil: [:anAnnotation | anAnnotation exampleSelection]);
			onChangeBlock: [:exampleOrAllExampleString |
				exampleOrAllExampleString = BPExampleSpecificScript allExamplesName
					ifTrue: [self annotation exampleName: exampleOrAllExampleString]
					ifFalse: [self annotation exampleName: exampleOrAllExampleString uniqueIdentifier].
				self codeContentChanged]);
		yourself.