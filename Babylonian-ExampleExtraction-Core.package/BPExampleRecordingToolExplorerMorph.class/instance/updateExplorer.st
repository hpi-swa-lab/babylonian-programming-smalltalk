ui
updateExplorer
	
	| explorer |
	self removeAllMorphs.
	
	explorer := ((ToolBuilder build: (ObjectExplorer explore: self exploree))
		findA: PluggableTreeMorph).
	explorer
		position: self position;
		hResizing: #spaceFill;
		vResizing: #spaceFill.
	self addMorph: explorer 