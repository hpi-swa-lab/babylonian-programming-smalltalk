ui - actions
expandInExamplesMorph

	self containingBrowser 
		ifNotNil: [self flag: #todo. "The following is very brittle --pre, jb"
				  (self ownerThatIsA: BPExamplesMorph)
					ifNotNil: [(self ownerThatIsA: BPExamplesMorph) exampleMorphExpanded: self]].
	
	