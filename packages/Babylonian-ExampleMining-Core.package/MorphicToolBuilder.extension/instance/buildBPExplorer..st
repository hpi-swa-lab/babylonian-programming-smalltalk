*Babylonian-ExampleMining-Core
buildBPExplorer: aBPExplorerSpec
	
	| widget |
	widget := BPExampleMiningExplorerMorph new.
	
	widget
		model: aBPExplorerSpec model;
		getExploreeSelector: aBPExplorerSpec getExploree.
		
	self setFrame: aBPExplorerSpec frame in: widget.
	self setLayoutHintsFor: widget spec: aBPExplorerSpec.
	parent ifNotNil:[self add: widget to: parent].

	^ widget