actions
removeProbe: aProbe

	nameToProbesDict at: aProbe assignedClassName
		ifPresent: [:registeredProbes | registeredProbes remove: aProbe.
									    registeredProbes ifEmpty: 
										[nameToProbesDict removeKey: aProbe assignedClassName]]
		