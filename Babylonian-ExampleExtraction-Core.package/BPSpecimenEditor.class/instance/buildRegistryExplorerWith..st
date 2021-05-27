toolbuilder
buildRegistryExplorerWith: aBuilder
	
	| explorerSpec |
	explorerSpec := BPExampleRecordingToolExplorerSpec new
		model: self;
		getExploree: #registry;
		yourself.
	
	^ explorerSpec