toolbuilder
buildSpecimenExplorerWith: aBuilder
	
	| explorerSpec |
	explorerSpec := BPExampleRecordingToolExplorerSpec new
		model: self;
		getExploree: #specimen;
		yourself.
	
	^ explorerSpec