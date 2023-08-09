toolbuilder
buildExplorerWith: aBuilder

	^BPExampleMiningExplorerSpec new
		model: self;
		getExploree: #selectedRecording;
		yourself