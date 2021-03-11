callgraph
buildDefaultBrowserWith: aBuilder
	
	^ (super buildDefaultBrowserWith: aBuilder)
		extent: 900@500;
		yourself