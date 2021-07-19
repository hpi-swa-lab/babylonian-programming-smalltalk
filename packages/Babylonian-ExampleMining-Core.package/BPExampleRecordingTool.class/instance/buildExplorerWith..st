toolbuilder
buildExplorerWith: aBuilder
	
	| explorerSpec |
	explorerSpec := BPExampleRecordingToolExplorerSpec new
		model: self;
		getExploree: #selectedRecording;
		yourself.
	^ explorerSpec