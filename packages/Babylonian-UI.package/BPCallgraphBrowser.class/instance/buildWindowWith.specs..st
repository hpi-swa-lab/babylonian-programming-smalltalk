callgraph
buildWindowWith: aBuilder specs: aCollection
	
	| specs |
	sidebar := BPBrowserSidebar new
		when: #browseMethod send: #browseReference: to: self;
		yourself.
	specs := self compressWidthOfSpecs: aCollection from: 1 to: 0.7.
	^ super buildWindowWith: aBuilder specs: {
		(0@0 corner: (specs first key leftFraction)@1) -> [sidebar buildWith: aBuilder]
	}, specs