actions
exploreButtonClickedFor: trace
	
	((trace valuesForProbeId: self id) collect: [:aValue | aValue tracedValue]) explore.