helpers
recordMethod: aSymbol inClass: aClass with: aBlock
	

	exampleExtractionTool method: aClass >> aSymbol.
	exampleExtractionTool startRecording.
	aBlock value.
	exampleExtractionTool stopRecording.