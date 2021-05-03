callgraph
wrapUserCode: aBlock
	
	^ Smalltalk at: #RSSimulator 
		ifPresent: [:simulator | [simulator simulateIfNeeded: aBlock additionalDepth: 0]]
		ifAbsent: [aBlock]