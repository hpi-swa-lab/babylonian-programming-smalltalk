as yet unclassified
explorerSpecFor: exploreeSelector
	
	^ BPExampleRecordingToolExplorerSpec new
		model: self;
		getExploree: exploreeSelector;
		yourself.