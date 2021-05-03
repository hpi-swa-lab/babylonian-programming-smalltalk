callgraph
buildWindowWith: aBuilder specs: aCollection
	<scriptExampleNamed: 'building a simple browser' script:'BPCallgraphBrowser new buildWith: ToolBuilder default'>
	| specs |
	sidebar := BPBrowserSidebar new
		when: #browseMethod send: #browseReference: to: self;
		when: #highlightSend send: #highlightSendIn:at: to: self;
		yourself.
	specs := self compressWidthOfSpecs: aCollection from: 1 to: 0.7.
	^ super buildWindowWith: aBuilder specs: {
		((specs last key rightFraction)@0 corner: 1@1) -> [sidebar buildWith: aBuilder]
	}, specs