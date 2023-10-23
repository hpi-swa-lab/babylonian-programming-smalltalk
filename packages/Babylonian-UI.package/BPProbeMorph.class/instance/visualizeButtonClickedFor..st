actions
visualizeButtonClickedFor: aTrace
	
	| lineMorph scrollPane visualizationMorph axisYNotationMorph axisYNotationHolder valuesMorph |
	lineMorph := self ensureLineMorphFor: aTrace.
	
	scrollPane := (lineMorph submorphNamed: #scrollWrapper) submorphNamed: #scrollPane.
	axisYNotationHolder := lineMorph submorphNamed: #bpLegendWrapper.
	axisYNotationMorph := lineMorph valueOfProperty: #bpAxisYNotationMorph.
	visualizationMorph := lineMorph valueOfProperty: #bpVisualizationMorph.
	valuesMorph := lineMorph valueOfProperty: #bpValuesMorph.
	
	axisYNotationHolder submorphs
		ifEmpty: [
			axisYNotationHolder addMorph: axisYNotationMorph.
			scrollPane scroller 
				removeAllMorphs;
				addMorph: visualizationMorph.
			scrollPane height: visualizationMorph height + self scrollBarSize.] 
		ifNotEmpty: [
			axisYNotationHolder removeAllMorphs; extent: 0@0.
			scrollPane scroller 
				removeAllMorphs;
				addMorph: valuesMorph.
			scrollPane height: valuesMorph height + self scrollBarSize.].