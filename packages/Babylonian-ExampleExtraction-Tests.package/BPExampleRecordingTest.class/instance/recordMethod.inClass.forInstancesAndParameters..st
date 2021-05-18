helpers
recordMethod: aSymbol inClass: aClass forInstancesAndParameters: aDictionary
	

	exampleExtractionTool method: aClass >> aSymbol.
	exampleExtractionTool startRecording.
	aDictionary keysAndValuesDo: [:instance :params | instance perform: aSymbol withArguments: params].
	exampleExtractionTool stopRecording.