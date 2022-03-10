private -ui 
addNewColumnFrontFor: aBPExample

	aBPExample isNilExample ifTrue: ["do nothing" ^ self].
	
	self addMorphFront: (BPPrintbuggerColumnMorph
						newForExample: aBPExample
						context: context).	 