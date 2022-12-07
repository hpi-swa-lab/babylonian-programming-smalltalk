toolbuilder
buildWith: aBuilder
	
	
	model callgraph: self callgraph.
	self initializeEvents.
	^ aBuilder build: (model getSpec
		frame: (0@0 corner: 1@1);
		yourself)