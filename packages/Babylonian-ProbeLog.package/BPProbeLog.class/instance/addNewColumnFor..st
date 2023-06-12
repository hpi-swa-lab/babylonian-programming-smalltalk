private -ui 
addNewColumnFor: aBPExample

	aBPExample isNilExample ifTrue: ["do nothing" ^ self].
	
	self addMorph: (BPProbeLogColumnMorph
						newForExample: aBPExample
						context: context)
		atIndex: ({self submorphs size . 1} max).	 