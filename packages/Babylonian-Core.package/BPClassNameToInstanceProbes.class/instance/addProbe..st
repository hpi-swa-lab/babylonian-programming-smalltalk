actions
addProbe: aProbe

	nameToProbesDict at: aProbe assignedClassName
		ifPresent: [:registeredProbes | registeredProbes add: aProbe]
		ifAbsent: [ | k |
			k := KeyedSet keyBlock: [ :each | each variableName ].
			k add: aProbe.
			nameToProbesDict at: aProbe assignedClassName put: k]
		