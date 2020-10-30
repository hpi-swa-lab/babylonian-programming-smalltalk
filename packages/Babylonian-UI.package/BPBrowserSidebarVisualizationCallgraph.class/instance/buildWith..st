toolbuilder
buildWith: aBuilder
	
	| model |
	model := BPCallgraphModel new.
	model callgraph: self callgraph.
	model when: #doubleClicked evaluate: [:entry | (entry respondsTo: #methodReference) 
		ifTrue: [self triggerEvent: #browseMethod with: entry methodReference]].
	^ aBuilder build: (model getSpec
		frame: (0@0 corner: 1@1);
		yourself)