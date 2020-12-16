adding examples
addRecordedExampleButtonClicked
	
	(BPExampleRecordingTool new
		exampleMorph: self;
		compiledMethod: self compiledMethod) openInWindow