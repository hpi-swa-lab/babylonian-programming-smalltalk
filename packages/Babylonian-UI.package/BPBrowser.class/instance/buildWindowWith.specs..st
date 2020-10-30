callgraph ui
buildWindowWith: aBuilder specs: aCollection
	
	| specs |
	specs := self compressWidthOfSpecs: aCollection from: 1 to: 0.7.
	^ super buildWindowWith: aBuilder specs: {
		(0@0 corner: (specs first key leftFraction)@1) -> [BPBrowserSidebar new 
			when: #browseMethod send: #browseReference: to: self;
			buildWith: aBuilder]
	}, specs