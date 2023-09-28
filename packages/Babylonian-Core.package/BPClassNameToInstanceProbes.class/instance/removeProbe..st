as yet unclassified
removeProbe: aProbe

	nameToProbesDict at: aProbe className
		ifPresent: [:registeredProbes | registeredProbes remove: aProbe]
		