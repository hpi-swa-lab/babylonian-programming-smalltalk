private - ui
newLineMorphFor: aTrace
	
	| newLine scrollPane |
	newLine := self newExampleLineMorph
		setProperty: #bpTrace toValue: aTrace;
		yourself.
		
	newLine addMorphBack: (self newExploreButtonFor: aTrace).
	newLine addMorphBack: (self newHaltButtonFor: aTrace).
	
	newLine addMorphBack: (Morph new
		color: Color transparent; 
		layoutInset: 0;
		vResizing: #shrinkWrap;
		hResizing: #shrinkWrap;
		name: #errorIndicatorHolder;
		extent: 0@0;
		yourself).
	
	newLine addMorphBack: (self newExampleLabelMorphFor: aTrace).
		
	scrollPane := self newScrollPane.
	newLine addMorphBack: scrollPane.
	
	^ newLine
	