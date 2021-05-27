toolbuilder
buildMockExplorerWith: aBuilder
	
	| explorerSpec |
	explorerSpec := BPExampleRecordingToolExplorerSpec new
		model: self;
		getExploree: #mockedSpecimen;
		yourself.
	
	^ explorerSpec