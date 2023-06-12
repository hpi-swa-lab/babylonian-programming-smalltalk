private -ui 
addNewColumnFrontFor: aBPExample

	aBPExample isNilExample ifTrue: ["do nothing" ^ self].
	
	self addMorphFront: (BPProbeLogColumnMorph
						newForExample: aBPExample
						context: context).	 