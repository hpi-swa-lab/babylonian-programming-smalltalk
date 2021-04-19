private
updateVisualizationMorphInside: aScrollPane over: aValuesMorph for: aTrace
	
	| visualizer visualizationMorph axisYNotationMorph|
	(self canBeVisualized: aTrace) ifTrue: [
		visualizer := BPVisualization visualizationObjectForValues: ((aTrace valuesForProbeId: self id) collect: [:aTracedValue | aTracedValue tracedValue])
		overMorph: aValuesMorph.
		
		visualizationMorph :=  visualizer visualizationMorph.
		axisYNotationMorph := visualizer legendMorph.
		aScrollPane scroller addMorph: visualizationMorph.
		visualizationMorph hide.
		(self ensureLineMorphFor: aTrace) addMorph: axisYNotationMorph inFrontOf: aScrollPane owner.
		axisYNotationMorph hide.
		
		aScrollPane height: visualizationMorph height + self scrollBarSize].