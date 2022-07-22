ui - actions
collapseInExamplesMorph

	self flag: #todo. "The following is very brittle --pre, jb"
	(self ownerThatIsA: BPExamplesMorph) ifNotNil: [:examplesMorph | 
		examplesMorph exampleMorphCollapsed: self].
	
	
	