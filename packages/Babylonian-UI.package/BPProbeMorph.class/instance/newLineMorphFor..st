private - ui
newLineMorphFor: aTrace
	
	| newLine scrollPane |
	newLine := self newExampleLineMorph
		setProperty: #bpTrace toValue: aTrace;
		yourself.
		
	newLine 
		addMorphBack: (self newExploreButtonFor: aTrace);
		addMorphBack: (self newHaltButtonFor: aTrace).
	
	(self canBeVisualized: aTrace) ifTrue: [
		newLine addMorphBack: (self newVisualizeButtonFor: aTrace)].
	
	newLine addMorphBack: (Morph new
		color: Color transparent; 
		borderWidth: 0;
		layoutInset: 0;
		vResizing: #shrinkWrap;
		hResizing: #shrinkWrap;
		name: #errorIndicatorHolder;
		extent: 0@0;
		yourself).
	
	newLine addMorphBack: (self newExampleLabelMorphFor: aTrace example).
	
	(self canBeVisualized: aTrace) ifTrue: [
		newLine addMorphBack: (self newContainerMorph
			extent: 0@0;
			name: #axisYNotationHolder;
			yourself)].
		
	scrollPane := self newScrollPane.
	newLine addMorphBack: scrollPane.
	
	^ newLine
	