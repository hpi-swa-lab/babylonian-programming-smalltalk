toolbuilder
buildExplorerWith: aBuilder
	
	| explorerSpec |
	explorerSpec := BPExampleMiningExplorerSpec new
		model: self;
		getExploree: #selectedRecording;
		yourself.
	^ explorerSpec