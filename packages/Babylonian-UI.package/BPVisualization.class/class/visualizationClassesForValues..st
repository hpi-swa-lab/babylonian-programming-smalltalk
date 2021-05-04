helper
visualizationClassesForValues: traceValues
	

	| containedClasses |
	containedClasses := (traceValues collect: [:tracedValue | tracedValue class]) asSet.
	^ self allSubclasses select: [:aSubclass |
		containedClasses allSatisfy: [:aTracedValueClass | aTracedValueClass withAllSuperclasses includes: aSubclass supportedClass]]