toolbuilder
explorerSpecFor: exploreeSelector

	^ BPExampleMiningExplorerSpec new
		model: self;
		getExploree: exploreeSelector;
		yourself