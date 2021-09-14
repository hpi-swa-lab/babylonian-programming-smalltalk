private
updateVisualizationMorphInside: aScrollPane over: aValuesMorph for: aTrace
	
	| visualizer |
	(self canBeVisualized: aTrace) ifTrue: [
		visualizer := BPVisualization 
			visualizationObjectForValues: ((aTrace valuesForProbeId: self id) collect: [:aTracedValue | aTracedValue tracedValue])
			overMorph: aValuesMorph.
		
		(self ensureLineMorphFor: aTrace) 
			setProperty: #bpVisualizationMorph 
			toValue: visualizer visualizationMorph.
		(self ensureLineMorphFor: aTrace) 
			setProperty: #bpAxisYNotationMorph 
			toValue: visualizer legendMorph.].