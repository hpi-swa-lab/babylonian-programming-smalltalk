adding examples
addRecordedExampleButtonClicked
	
	(BPExampleRecordingToolOld new
		exampleMorph: self;
		compiledMethod: self compiledMethod) openInWindow