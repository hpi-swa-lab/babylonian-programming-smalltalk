private - ui
canBeVisualized: aTrace
	
	^ (BPVisualization visualizationClassesForValues: ((aTrace valuesForProbeId: self id) collect: [:aTracedValue | aTracedValue tracedValue])) notEmpty