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
		borderWidth: 0;
		layoutInset: 0;
		vResizing: #shrinkWrap;
		hResizing: #shrinkWrap;
		name: #errorIndicatorHolder;
		extent: 0@0;
		yourself).
	
	newLine addMorphBack: (self newExampleLabelMorphFor: aTrace).
		
	scrollPane := self newScrollPane.
	newLine addMorphBack: scrollPane.
	
	newLine addMorphBack: (SimpleButtonMorph new
		hResizing: #shrinkWrap;
		"vResizing: #shrinkWrap;"
		label: 'view common ancestor';
		target: self;
		actionSelector: #viewCommonAncestorForTrace:;
		arguments: {aTrace};
		yourself).
	
	newLine addMorphBack: (SimpleButtonMorph new
		hResizing: #shrinkWrap;
		"vResizing: #shrinkWrap;"
		label: 'select this';
		target: self;
		actionSelector: #selectForAncestor:;
		arguments: {aTrace};
		yourself).
	
	newLine addMorphBack: (SimpleButtonMorph new
		hResizing: #shrinkWrap;
		"vResizing: #shrinkWrap;"
		label: 'get ancestors now';
		target: self;
		actionSelector: #debugdonow:;
		arguments: {aTrace};
		yourself).
		
	^ newLine
	