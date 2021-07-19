helpers
recordMethod: aSymbol inClass: aClass forInstancesAndParameters: aDictionary isClassMethod: aBoolean
	

	aBoolean
		ifTrue: [exampleExtractionTool method: (aClass class compiledMethodAt: aSymbol)]
		ifFalse: [exampleExtractionTool method: aClass >> aSymbol].
	
	exampleExtractionTool startRecording.
	aDictionary keysAndValuesDo: [:instance :params | instance perform: aSymbol withArguments: params].
	exampleExtractionTool stopRecording.