as yet unclassified
removeProbe: aProbe

	nameToProbesDict at: aProbe assignedClassName
		ifPresent: [:registeredProbes | registeredProbes remove: aProbe]
		