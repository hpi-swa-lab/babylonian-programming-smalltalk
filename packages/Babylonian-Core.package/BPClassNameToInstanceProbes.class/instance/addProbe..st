as yet unclassified
addProbe: aProbe

	nameToProbesDict at: aProbe className
		ifPresent: [:registeredProbes | registeredProbes add: aProbe]
		ifAbsent: [ | k |
			k := KeyedSet keyBlock: [ :each | each variableName ].
			nameToProbesDict at: aProbe className put: k]
		