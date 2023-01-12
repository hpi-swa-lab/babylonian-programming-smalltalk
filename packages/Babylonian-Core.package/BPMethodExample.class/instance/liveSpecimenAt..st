accessing
liveSpecimenAt: anIndex
	(self argumentScripts at: anIndex) isLiveSpecimenReference ifFalse: [^ nil].
	^ self resolveLiveSpecimen: (self argumentScripts at: anIndex)