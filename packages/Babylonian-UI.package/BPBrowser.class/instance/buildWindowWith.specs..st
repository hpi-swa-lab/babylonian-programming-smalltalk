callgraph
buildWindowWith: aBuilder specs: aCollection
	
	| specs |
	sidebar := BPBrowserSidebar new.
	specs := self compressWidthOfSpecs: aCollection from: 1 to: 0.7.
	^ super buildWindowWith: aBuilder specs: {
		(0@0 corner: (specs first key leftFraction)@1) -> [sidebar 
			when: #browseMethod send: #browseReference: to: self;
			buildWith: aBuilder]
	}, specs