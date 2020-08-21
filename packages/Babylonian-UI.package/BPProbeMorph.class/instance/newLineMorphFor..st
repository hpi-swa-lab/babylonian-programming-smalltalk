private - ui
newLineMorphFor: aTrace

	| newLine scrollPane |
	newLine := Morph new 
		color: Color transparent; 
		changeTableLayout; 
		layoutInset: 0;
		listDirection: #leftToRight; 
		vResizing: #shrinkWrap;
		hResizing: #shrinkWrap;
		cellPositioning: #leftCenter;
		cellGap: 1;
		name: 'example line';
		setProperty: #bpTrace toValue: aTrace;
		yourself.
		
	newLine addMorphBack: (self newExploreButtonFor: aTrace).
	
	newLine addMorphBack: (Morph new
		color: Color transparent; 
		layoutInset: 0;
		vResizing: #shrinkWrap;
		hResizing: #shrinkWrap;
		name: #errorIndicatorHolder;
		extent: 0@0;
		yourself).
	
	newLine addMorphBack: (self newExampleLabelMorphFor: aTrace).
		
	scrollPane := ScrollPane new
		width: 300;
		color: Color transparent;
		vScrollBarPolicy: #never;
		showHScrollBarOnlyWhenNeeded;
		scrollBarThickness: self scrollBarSize;
		height: 20;
		name: #scrollPane;
		yourself.
	
	newLine addMorphBack: scrollPane.
	^ newLine
	